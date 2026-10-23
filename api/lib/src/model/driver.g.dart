// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Driver extends Driver {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phone;

  factory _$Driver([void Function(DriverBuilder)? updates]) =>
      (DriverBuilder()..update(updates))._build();

  _$Driver._({this.name, this.email, this.phone}) : super._();
  @override
  Driver rebuild(void Function(DriverBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DriverBuilder toBuilder() => DriverBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Driver &&
        name == other.name &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Driver')
          ..add('name', name)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class DriverBuilder implements Builder<Driver, DriverBuilder> {
  _$Driver? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DriverBuilder() {
    Driver._defaults(this);
  }

  DriverBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Driver other) {
    _$v = other as _$Driver;
  }

  @override
  void update(void Function(DriverBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Driver build() => _build();

  _$Driver _build() {
    final _$result = _$v ??
        _$Driver._(
          name: name,
          email: email,
          phone: phone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
