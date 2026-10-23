// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePasswordRequest extends CreatePasswordRequest {
  @override
  final String? password;
  @override
  final String? confirmPassword;

  factory _$CreatePasswordRequest(
          [void Function(CreatePasswordRequestBuilder)? updates]) =>
      (CreatePasswordRequestBuilder()..update(updates))._build();

  _$CreatePasswordRequest._({this.password, this.confirmPassword}) : super._();
  @override
  CreatePasswordRequest rebuild(
          void Function(CreatePasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePasswordRequestBuilder toBuilder() =>
      CreatePasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePasswordRequest &&
        password == other.password &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePasswordRequest')
          ..add('password', password)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class CreatePasswordRequestBuilder
    implements Builder<CreatePasswordRequest, CreatePasswordRequestBuilder> {
  _$CreatePasswordRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  CreatePasswordRequestBuilder() {
    CreatePasswordRequest._defaults(this);
  }

  CreatePasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePasswordRequest other) {
    _$v = other as _$CreatePasswordRequest;
  }

  @override
  void update(void Function(CreatePasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePasswordRequest build() => _build();

  _$CreatePasswordRequest _build() {
    final _$result = _$v ??
        _$CreatePasswordRequest._(
          password: password,
          confirmPassword: confirmPassword,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
