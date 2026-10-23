// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_user_without_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterUserWithoutPasswordRequest
    extends RegisterUserWithoutPasswordRequest {
  @override
  final String? identity;
  @override
  final String? name;
  @override
  final String? phone;

  factory _$RegisterUserWithoutPasswordRequest(
          [void Function(RegisterUserWithoutPasswordRequestBuilder)?
              updates]) =>
      (RegisterUserWithoutPasswordRequestBuilder()..update(updates))._build();

  _$RegisterUserWithoutPasswordRequest._({this.identity, this.name, this.phone})
      : super._();
  @override
  RegisterUserWithoutPasswordRequest rebuild(
          void Function(RegisterUserWithoutPasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterUserWithoutPasswordRequestBuilder toBuilder() =>
      RegisterUserWithoutPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterUserWithoutPasswordRequest &&
        identity == other.identity &&
        name == other.name &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identity.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RegisterUserWithoutPasswordRequest')
          ..add('identity', identity)
          ..add('name', name)
          ..add('phone', phone))
        .toString();
  }
}

class RegisterUserWithoutPasswordRequestBuilder
    implements
        Builder<RegisterUserWithoutPasswordRequest,
            RegisterUserWithoutPasswordRequestBuilder> {
  _$RegisterUserWithoutPasswordRequest? _$v;

  String? _identity;
  String? get identity => _$this._identity;
  set identity(String? identity) => _$this._identity = identity;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  RegisterUserWithoutPasswordRequestBuilder() {
    RegisterUserWithoutPasswordRequest._defaults(this);
  }

  RegisterUserWithoutPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identity = $v.identity;
      _name = $v.name;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterUserWithoutPasswordRequest other) {
    _$v = other as _$RegisterUserWithoutPasswordRequest;
  }

  @override
  void update(
      void Function(RegisterUserWithoutPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterUserWithoutPasswordRequest build() => _build();

  _$RegisterUserWithoutPasswordRequest _build() {
    final _$result = _$v ??
        _$RegisterUserWithoutPasswordRequest._(
          identity: identity,
          name: name,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
