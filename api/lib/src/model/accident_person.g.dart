// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accident_person.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccidentPerson extends AccidentPerson {
  @override
  final String? personId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? address;

  factory _$AccidentPerson([void Function(AccidentPersonBuilder)? updates]) =>
      (AccidentPersonBuilder()..update(updates))._build();

  _$AccidentPerson._(
      {this.personId, this.firstName, this.lastName, this.address})
      : super._();
  @override
  AccidentPerson rebuild(void Function(AccidentPersonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccidentPersonBuilder toBuilder() => AccidentPersonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccidentPerson &&
        personId == other.personId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccidentPerson')
          ..add('personId', personId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('address', address))
        .toString();
  }
}

class AccidentPersonBuilder
    implements Builder<AccidentPerson, AccidentPersonBuilder> {
  _$AccidentPerson? _$v;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(String? personId) => _$this._personId = personId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  AccidentPersonBuilder() {
    AccidentPerson._defaults(this);
  }

  AccidentPersonBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _personId = $v.personId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccidentPerson other) {
    _$v = other as _$AccidentPerson;
  }

  @override
  void update(void Function(AccidentPersonBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccidentPerson build() => _build();

  _$AccidentPerson _build() {
    final _$result = _$v ??
        _$AccidentPerson._(
          personId: personId,
          firstName: firstName,
          lastName: lastName,
          address: address,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
