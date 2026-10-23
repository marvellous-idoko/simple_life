// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpUserRequest extends SignUpUserRequest {
  @override
  final String? password;
  @override
  final String? identity;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? confirmPassword;

  factory _$SignUpUserRequest(
          [void Function(SignUpUserRequestBuilder)? updates]) =>
      (SignUpUserRequestBuilder()..update(updates))._build();

  _$SignUpUserRequest._(
      {this.password,
      this.identity,
      this.name,
      this.phone,
      this.confirmPassword})
      : super._();
  @override
  SignUpUserRequest rebuild(void Function(SignUpUserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpUserRequestBuilder toBuilder() =>
      SignUpUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpUserRequest &&
        password == other.password &&
        identity == other.identity &&
        name == other.name &&
        phone == other.phone &&
        confirmPassword == other.confirmPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, confirmPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpUserRequest')
          ..add('password', password)
          ..add('identity', identity)
          ..add('name', name)
          ..add('phone', phone)
          ..add('confirmPassword', confirmPassword))
        .toString();
  }
}

class SignUpUserRequestBuilder
    implements Builder<SignUpUserRequest, SignUpUserRequestBuilder> {
  _$SignUpUserRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _identity;
  String? get identity => _$this._identity;
  set identity(String? identity) => _$this._identity = identity;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _confirmPassword;
  String? get confirmPassword => _$this._confirmPassword;
  set confirmPassword(String? confirmPassword) =>
      _$this._confirmPassword = confirmPassword;

  SignUpUserRequestBuilder() {
    SignUpUserRequest._defaults(this);
  }

  SignUpUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _identity = $v.identity;
      _name = $v.name;
      _phone = $v.phone;
      _confirmPassword = $v.confirmPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpUserRequest other) {
    _$v = other as _$SignUpUserRequest;
  }

  @override
  void update(void Function(SignUpUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpUserRequest build() => _build();

  _$SignUpUserRequest _build() {
    final _$result = _$v ??
        _$SignUpUserRequest._(
          password: password,
          identity: identity,
          name: name,
          phone: phone,
          confirmPassword: confirmPassword,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
