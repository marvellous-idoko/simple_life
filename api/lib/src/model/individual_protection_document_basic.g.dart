// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_protection_document_basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IndividualProtectionDocumentBasic
    extends IndividualProtectionDocumentBasic {
  @override
  final Rider? schema;

  factory _$IndividualProtectionDocumentBasic(
          [void Function(IndividualProtectionDocumentBasicBuilder)? updates]) =>
      (IndividualProtectionDocumentBasicBuilder()..update(updates))._build();

  _$IndividualProtectionDocumentBasic._({this.schema}) : super._();
  @override
  IndividualProtectionDocumentBasic rebuild(
          void Function(IndividualProtectionDocumentBasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualProtectionDocumentBasicBuilder toBuilder() =>
      IndividualProtectionDocumentBasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualProtectionDocumentBasic && schema == other.schema;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, schema.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IndividualProtectionDocumentBasic')
          ..add('schema', schema))
        .toString();
  }
}

class IndividualProtectionDocumentBasicBuilder
    implements
        Builder<IndividualProtectionDocumentBasic,
            IndividualProtectionDocumentBasicBuilder> {
  _$IndividualProtectionDocumentBasic? _$v;

  RiderBuilder? _schema;
  RiderBuilder get schema => _$this._schema ??= RiderBuilder();
  set schema(RiderBuilder? schema) => _$this._schema = schema;

  IndividualProtectionDocumentBasicBuilder() {
    IndividualProtectionDocumentBasic._defaults(this);
  }

  IndividualProtectionDocumentBasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _schema = $v.schema?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndividualProtectionDocumentBasic other) {
    _$v = other as _$IndividualProtectionDocumentBasic;
  }

  @override
  void update(
      void Function(IndividualProtectionDocumentBasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IndividualProtectionDocumentBasic build() => _build();

  _$IndividualProtectionDocumentBasic _build() {
    _$IndividualProtectionDocumentBasic _$result;
    try {
      _$result = _$v ??
          _$IndividualProtectionDocumentBasic._(
            schema: _schema?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schema';
        _schema?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IndividualProtectionDocumentBasic', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
