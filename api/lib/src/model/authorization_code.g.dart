// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationCode extends AuthorizationCode {
  @override
  final String? code;

  factory _$AuthorizationCode(
          [void Function(AuthorizationCodeBuilder)? updates]) =>
      (AuthorizationCodeBuilder()..update(updates))._build();

  _$AuthorizationCode._({this.code}) : super._();
  @override
  AuthorizationCode rebuild(void Function(AuthorizationCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationCodeBuilder toBuilder() =>
      AuthorizationCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizationCode && code == other.code;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorizationCode')
          ..add('code', code))
        .toString();
  }
}

class AuthorizationCodeBuilder
    implements Builder<AuthorizationCode, AuthorizationCodeBuilder> {
  _$AuthorizationCode? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  AuthorizationCodeBuilder() {
    AuthorizationCode._defaults(this);
  }

  AuthorizationCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationCode other) {
    _$v = other as _$AuthorizationCode;
  }

  @override
  void update(void Function(AuthorizationCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationCode build() => _build();

  _$AuthorizationCode _build() {
    final _$result = _$v ??
        _$AuthorizationCode._(
          code: code,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
