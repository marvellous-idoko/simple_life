// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_logged_in_user200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLoggedInUser200Response extends GetLoggedInUser200Response {
  @override
  final String? userId;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? phone;

  factory _$GetLoggedInUser200Response(
          [void Function(GetLoggedInUser200ResponseBuilder)? updates]) =>
      (GetLoggedInUser200ResponseBuilder()..update(updates))._build();

  _$GetLoggedInUser200Response._(
      {this.userId, this.email, this.name, this.phone})
      : super._();
  @override
  GetLoggedInUser200Response rebuild(
          void Function(GetLoggedInUser200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLoggedInUser200ResponseBuilder toBuilder() =>
      GetLoggedInUser200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLoggedInUser200Response &&
        userId == other.userId &&
        email == other.email &&
        name == other.name &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetLoggedInUser200Response')
          ..add('userId', userId)
          ..add('email', email)
          ..add('name', name)
          ..add('phone', phone))
        .toString();
  }
}

class GetLoggedInUser200ResponseBuilder
    implements
        Builder<GetLoggedInUser200Response, GetLoggedInUser200ResponseBuilder> {
  _$GetLoggedInUser200Response? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  GetLoggedInUser200ResponseBuilder() {
    GetLoggedInUser200Response._defaults(this);
  }

  GetLoggedInUser200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _email = $v.email;
      _name = $v.name;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLoggedInUser200Response other) {
    _$v = other as _$GetLoggedInUser200Response;
  }

  @override
  void update(void Function(GetLoggedInUser200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLoggedInUser200Response build() => _build();

  _$GetLoggedInUser200Response _build() {
    final _$result = _$v ??
        _$GetLoggedInUser200Response._(
          userId: userId,
          email: email,
          name: name,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
