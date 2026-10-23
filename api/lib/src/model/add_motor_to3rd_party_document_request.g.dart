// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_motor_to3rd_party_document_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddMotorTo3rdPartyDocumentRequest
    extends AddMotorTo3rdPartyDocumentRequest {
  @override
  final BuiltList<String>? interestIds;

  factory _$AddMotorTo3rdPartyDocumentRequest(
          [void Function(AddMotorTo3rdPartyDocumentRequestBuilder)? updates]) =>
      (AddMotorTo3rdPartyDocumentRequestBuilder()..update(updates))._build();

  _$AddMotorTo3rdPartyDocumentRequest._({this.interestIds}) : super._();
  @override
  AddMotorTo3rdPartyDocumentRequest rebuild(
          void Function(AddMotorTo3rdPartyDocumentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddMotorTo3rdPartyDocumentRequestBuilder toBuilder() =>
      AddMotorTo3rdPartyDocumentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddMotorTo3rdPartyDocumentRequest &&
        interestIds == other.interestIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interestIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddMotorTo3rdPartyDocumentRequest')
          ..add('interestIds', interestIds))
        .toString();
  }
}

class AddMotorTo3rdPartyDocumentRequestBuilder
    implements
        Builder<AddMotorTo3rdPartyDocumentRequest,
            AddMotorTo3rdPartyDocumentRequestBuilder> {
  _$AddMotorTo3rdPartyDocumentRequest? _$v;

  ListBuilder<String>? _interestIds;
  ListBuilder<String> get interestIds =>
      _$this._interestIds ??= ListBuilder<String>();
  set interestIds(ListBuilder<String>? interestIds) =>
      _$this._interestIds = interestIds;

  AddMotorTo3rdPartyDocumentRequestBuilder() {
    AddMotorTo3rdPartyDocumentRequest._defaults(this);
  }

  AddMotorTo3rdPartyDocumentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interestIds = $v.interestIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddMotorTo3rdPartyDocumentRequest other) {
    _$v = other as _$AddMotorTo3rdPartyDocumentRequest;
  }

  @override
  void update(
      void Function(AddMotorTo3rdPartyDocumentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddMotorTo3rdPartyDocumentRequest build() => _build();

  _$AddMotorTo3rdPartyDocumentRequest _build() {
    _$AddMotorTo3rdPartyDocumentRequest _$result;
    try {
      _$result = _$v ??
          _$AddMotorTo3rdPartyDocumentRequest._(
            interestIds: _interestIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'interestIds';
        _interestIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AddMotorTo3rdPartyDocumentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
