// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_otp_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetOtpRequest extends ResetOtpRequest {
  @override
  final String? identity;

  factory _$ResetOtpRequest([void Function(ResetOtpRequestBuilder)? updates]) =>
      (ResetOtpRequestBuilder()..update(updates))._build();

  _$ResetOtpRequest._({this.identity}) : super._();
  @override
  ResetOtpRequest rebuild(void Function(ResetOtpRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetOtpRequestBuilder toBuilder() => ResetOtpRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetOtpRequest && identity == other.identity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetOtpRequest')
          ..add('identity', identity))
        .toString();
  }
}

class ResetOtpRequestBuilder
    implements Builder<ResetOtpRequest, ResetOtpRequestBuilder> {
  _$ResetOtpRequest? _$v;

  String? _identity;
  String? get identity => _$this._identity;
  set identity(String? identity) => _$this._identity = identity;

  ResetOtpRequestBuilder() {
    ResetOtpRequest._defaults(this);
  }

  ResetOtpRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identity = $v.identity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetOtpRequest other) {
    _$v = other as _$ResetOtpRequest;
  }

  @override
  void update(void Function(ResetOtpRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetOtpRequest build() => _build();

  _$ResetOtpRequest _build() {
    final _$result = _$v ??
        _$ResetOtpRequest._(
          identity: identity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
