#!/usr/bin/env bash

set -euo pipefail

readonly ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
readonly SPEC_PATH="${ROOT_DIR}/api.yml"
readonly OUTPUT_PATH="${ROOT_DIR}/api"
readonly GENERATOR_VERSION="7.26.0"
readonly GENERATOR_IMAGE="openapitools/openapi-generator-cli:v${GENERATOR_VERSION}"

if [[ ! -f "${SPEC_PATH}" ]]; then
  echo "OpenAPI specification not found: ${SPEC_PATH}" >&2
  exit 1
fi

temp_output="$(mktemp -d "${ROOT_DIR}/.api-generated.XXXXXX")"
trap 'rm -rf "${temp_output}"' EXIT

generator_args=(
  generate
  -i "${SPEC_PATH}"
  -g dart-dio
  -o "${temp_output}"
  --additional-properties=pubName=openapi
)

if command -v docker >/dev/null 2>&1 && docker info >/dev/null 2>&1; then
  relative_temp="${temp_output#"${ROOT_DIR}/"}"
  docker run --rm \
    --user "$(id -u):$(id -g)" \
    --volume "${ROOT_DIR}:/local" \
    "${GENERATOR_IMAGE}" \
    generate \
    -i /local/api.yml \
    -g dart-dio \
    -o "/local/${relative_temp}" \
    --additional-properties=pubName=openapi
else
  command -v java >/dev/null 2>&1 || {
    echo "Java 17+ or a running Docker daemon is required." >&2
    exit 1
  }
  (
    cd "${ROOT_DIR}"
    npx --yes @openapitools/openapi-generator-cli "${generator_args[@]}"
  )
fi

rm -rf "${OUTPUT_PATH}"
mv "${temp_output}" "${OUTPUT_PATH}"
chmod 755 "${OUTPUT_PATH}"
trap - EXIT

cat > "${OUTPUT_PATH}/analysis_options.yaml" <<'YAML'
analyzer:
  language:
    strict-inference: true
    strict-raw-types: true
    strict-casts: false
  exclude:
    - test/*.dart
  errors:
    deprecated_member_use_from_same_package: ignore
    unused_element_parameter: ignore
    unused_import: ignore
YAML

(
  cd "${OUTPUT_PATH}"
  dart pub get
  dart run build_runner build
)

echo "Generated Dart API client in ${OUTPUT_PATH}"
