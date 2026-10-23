// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_user_in_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LogUserInRequest extends LogUserInRequest {
  @override
  final String? identity;
  @override
  final String? password;

  factory _$LogUserInRequest(
          [void Function(LogUserInRequestBuilder)? updates]) =>
      (LogUserInRequestBuilder()..update(updates))._build();

  _$LogUserInRequest._({this.identity, this.password}) : super._();
  @override
  LogUserInRequest rebuild(void Function(LogUserInRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LogUserInRequestBuilder toBuilder() =>
      LogUserInRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LogUserInRequest &&
        identity == other.identity &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LogUserInRequest')
          ..add('identity', identity)
          ..add('password', password))
        .toString();
  }
}

class LogUserInRequestBuilder
    implements Builder<LogUserInRequest, LogUserInRequestBuilder> {
  _$LogUserInRequest? _$v;

  String? _identity;
  String? get identity => _$this._identity;
  set identity(String? identity) => _$this._identity = identity;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  LogUserInRequestBuilder() {
    LogUserInRequest._defaults(this);
  }

  LogUserInRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identity = $v.identity;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LogUserInRequest other) {
    _$v = other as _$LogUserInRequest;
  }

  @override
  void update(void Function(LogUserInRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LogUserInRequest build() => _build();

  _$LogUserInRequest _build() {
    final _$result = _$v ??
        _$LogUserInRequest._(
          identity: identity,
          password: password,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
