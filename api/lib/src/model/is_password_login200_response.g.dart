// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_password_login200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IsPasswordLogin200Response extends IsPasswordLogin200Response {
  @override
  final bool? password;
  @override
  final bool? exists;

  factory _$IsPasswordLogin200Response(
          [void Function(IsPasswordLogin200ResponseBuilder)? updates]) =>
      (IsPasswordLogin200ResponseBuilder()..update(updates))._build();

  _$IsPasswordLogin200Response._({this.password, this.exists}) : super._();
  @override
  IsPasswordLogin200Response rebuild(
          void Function(IsPasswordLogin200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IsPasswordLogin200ResponseBuilder toBuilder() =>
      IsPasswordLogin200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IsPasswordLogin200Response &&
        password == other.password &&
        exists == other.exists;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, exists.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IsPasswordLogin200Response')
          ..add('password', password)
          ..add('exists', exists))
        .toString();
  }
}

class IsPasswordLogin200ResponseBuilder
    implements
        Builder<IsPasswordLogin200Response, IsPasswordLogin200ResponseBuilder> {
  _$IsPasswordLogin200Response? _$v;

  bool? _password;
  bool? get password => _$this._password;
  set password(bool? password) => _$this._password = password;

  bool? _exists;
  bool? get exists => _$this._exists;
  set exists(bool? exists) => _$this._exists = exists;

  IsPasswordLogin200ResponseBuilder() {
    IsPasswordLogin200Response._defaults(this);
  }

  IsPasswordLogin200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _exists = $v.exists;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IsPasswordLogin200Response other) {
    _$v = other as _$IsPasswordLogin200Response;
  }

  @override
  void update(void Function(IsPasswordLogin200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IsPasswordLogin200Response build() => _build();

  _$IsPasswordLogin200Response _build() {
    final _$result = _$v ??
        _$IsPasswordLogin200Response._(
          password: password,
          exists: exists,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
