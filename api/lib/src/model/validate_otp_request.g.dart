// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_otp_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidateOTPRequest extends ValidateOTPRequest {
  @override
  final String? identity;
  @override
  final String? otp;

  factory _$ValidateOTPRequest(
          [void Function(ValidateOTPRequestBuilder)? updates]) =>
      (ValidateOTPRequestBuilder()..update(updates))._build();

  _$ValidateOTPRequest._({this.identity, this.otp}) : super._();
  @override
  ValidateOTPRequest rebuild(
          void Function(ValidateOTPRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidateOTPRequestBuilder toBuilder() =>
      ValidateOTPRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidateOTPRequest &&
        identity == other.identity &&
        otp == other.otp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, otp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ValidateOTPRequest')
          ..add('identity', identity)
          ..add('otp', otp))
        .toString();
  }
}

class ValidateOTPRequestBuilder
    implements Builder<ValidateOTPRequest, ValidateOTPRequestBuilder> {
  _$ValidateOTPRequest? _$v;

  String? _identity;
  String? get identity => _$this._identity;
  set identity(String? identity) => _$this._identity = identity;

  String? _otp;
  String? get otp => _$this._otp;
  set otp(String? otp) => _$this._otp = otp;

  ValidateOTPRequestBuilder() {
    ValidateOTPRequest._defaults(this);
  }

  ValidateOTPRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identity = $v.identity;
      _otp = $v.otp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidateOTPRequest other) {
    _$v = other as _$ValidateOTPRequest;
  }

  @override
  void update(void Function(ValidateOTPRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ValidateOTPRequest build() => _build();

  _$ValidateOTPRequest _build() {
    final _$result = _$v ??
        _$ValidateOTPRequest._(
          identity: identity,
          otp: otp,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
