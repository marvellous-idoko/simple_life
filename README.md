# simple_life

Flutter client for the Simple Life API.

## Generated API client

The Dio client in `api/` is generated from `api.yml` with OpenAPI Generator
7.26.0. Do not edit files in `api/lib/` manually.

Regenerate the client after changing the specification:

```sh
./tool/generate_api.sh
```

The script uses the pinned Docker image when Docker is running. Otherwise it
uses the pinned generator configured in `openapitools.json` and requires Java
17 or newer.

Create and authenticate a client:

```dart
import 'package:openapi/openapi.dart';

final client = Openapi(
  basePathOverride: 'https://live-retail-api.heirsinsurance.com',
);

client
  ..setBearerAuth('bearerAuth', accessToken)
  ..setApiKey('apiKey', apiKey)
  ..setApiKey('appId', appId);

final api = client.getDefaultApi();
```
