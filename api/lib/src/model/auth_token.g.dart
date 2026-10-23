// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthToken extends AuthToken {
  @override
  final String token;
  @override
  final String expiry;
  @override
  final String? refreshToken;
  @override
  final String? refreshExpiry;

  factory _$AuthToken([void Function(AuthTokenBuilder)? updates]) =>
      (AuthTokenBuilder()..update(updates))._build();

  _$AuthToken._(
      {required this.token,
      required this.expiry,
      this.refreshToken,
      this.refreshExpiry})
      : super._();
  @override
  AuthToken rebuild(void Function(AuthTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthTokenBuilder toBuilder() => AuthTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthToken &&
        token == other.token &&
        expiry == other.expiry &&
        refreshToken == other.refreshToken &&
        refreshExpiry == other.refreshExpiry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, expiry.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, refreshExpiry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthToken')
          ..add('token', token)
          ..add('expiry', expiry)
          ..add('refreshToken', refreshToken)
          ..add('refreshExpiry', refreshExpiry))
        .toString();
  }
}

class AuthTokenBuilder implements Builder<AuthToken, AuthTokenBuilder> {
  _$AuthToken? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _expiry;
  String? get expiry => _$this._expiry;
  set expiry(String? expiry) => _$this._expiry = expiry;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _refreshExpiry;
  String? get refreshExpiry => _$this._refreshExpiry;
  set refreshExpiry(String? refreshExpiry) =>
      _$this._refreshExpiry = refreshExpiry;

  AuthTokenBuilder() {
    AuthToken._defaults(this);
  }

  AuthTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _expiry = $v.expiry;
      _refreshToken = $v.refreshToken;
      _refreshExpiry = $v.refreshExpiry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthToken other) {
    _$v = other as _$AuthToken;
  }

  @override
  void update(void Function(AuthTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthToken build() => _build();

  _$AuthToken _build() {
    final _$result = _$v ??
        _$AuthToken._(
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'AuthToken', 'token'),
          expiry: BuiltValueNullFieldError.checkNotNull(
              expiry, r'AuthToken', 'expiry'),
          refreshToken: refreshToken,
          refreshExpiry: refreshExpiry,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
