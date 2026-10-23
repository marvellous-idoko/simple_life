// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create3rd_party_document_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Create3rdPartyDocumentRequest extends Create3rdPartyDocumentRequest {
  @override
  final String? businessType;
  @override
  final String? businessChannel;

  factory _$Create3rdPartyDocumentRequest(
          [void Function(Create3rdPartyDocumentRequestBuilder)? updates]) =>
      (Create3rdPartyDocumentRequestBuilder()..update(updates))._build();

  _$Create3rdPartyDocumentRequest._({this.businessType, this.businessChannel})
      : super._();
  @override
  Create3rdPartyDocumentRequest rebuild(
          void Function(Create3rdPartyDocumentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Create3rdPartyDocumentRequestBuilder toBuilder() =>
      Create3rdPartyDocumentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Create3rdPartyDocumentRequest &&
        businessType == other.businessType &&
        businessChannel == other.businessChannel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, businessType.hashCode);
    _$hash = $jc(_$hash, businessChannel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Create3rdPartyDocumentRequest')
          ..add('businessType', businessType)
          ..add('businessChannel', businessChannel))
        .toString();
  }
}

class Create3rdPartyDocumentRequestBuilder
    implements
        Builder<Create3rdPartyDocumentRequest,
            Create3rdPartyDocumentRequestBuilder> {
  _$Create3rdPartyDocumentRequest? _$v;

  String? _businessType;
  String? get businessType => _$this._businessType;
  set businessType(String? businessType) => _$this._businessType = businessType;

  String? _businessChannel;
  String? get businessChannel => _$this._businessChannel;
  set businessChannel(String? businessChannel) =>
      _$this._businessChannel = businessChannel;

  Create3rdPartyDocumentRequestBuilder() {
    Create3rdPartyDocumentRequest._defaults(this);
  }

  Create3rdPartyDocumentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _businessType = $v.businessType;
      _businessChannel = $v.businessChannel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Create3rdPartyDocumentRequest other) {
    _$v = other as _$Create3rdPartyDocumentRequest;
  }

  @override
  void update(void Function(Create3rdPartyDocumentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Create3rdPartyDocumentRequest build() => _build();

  _$Create3rdPartyDocumentRequest _build() {
    final _$result = _$v ??
        _$Create3rdPartyDocumentRequest._(
          businessType: businessType,
          businessChannel: businessChannel,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
