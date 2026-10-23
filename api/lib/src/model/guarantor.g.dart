// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarantor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Guarantor extends Guarantor {
  @override
  final String? firstName;
  @override
  final String? surname;
  @override
  final String? middleName;
  @override
  final String? maidenName;
  @override
  final String? relationship;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final Address? address;

  factory _$Guarantor([void Function(GuarantorBuilder)? updates]) =>
      (GuarantorBuilder()..update(updates))._build();

  _$Guarantor._(
      {this.firstName,
      this.surname,
      this.middleName,
      this.maidenName,
      this.relationship,
      this.phone,
      this.email,
      this.address})
      : super._();
  @override
  Guarantor rebuild(void Function(GuarantorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GuarantorBuilder toBuilder() => GuarantorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Guarantor &&
        firstName == other.firstName &&
        surname == other.surname &&
        middleName == other.middleName &&
        maidenName == other.maidenName &&
        relationship == other.relationship &&
        phone == other.phone &&
        email == other.email &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, surname.hashCode);
    _$hash = $jc(_$hash, middleName.hashCode);
    _$hash = $jc(_$hash, maidenName.hashCode);
    _$hash = $jc(_$hash, relationship.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Guarantor')
          ..add('firstName', firstName)
          ..add('surname', surname)
          ..add('middleName', middleName)
          ..add('maidenName', maidenName)
          ..add('relationship', relationship)
          ..add('phone', phone)
          ..add('email', email)
          ..add('address', address))
        .toString();
  }
}

class GuarantorBuilder implements Builder<Guarantor, GuarantorBuilder> {
  _$Guarantor? _$v;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _middleName;
  String? get middleName => _$this._middleName;
  set middleName(String? middleName) => _$this._middleName = middleName;

  String? _maidenName;
  String? get maidenName => _$this._maidenName;
  set maidenName(String? maidenName) => _$this._maidenName = maidenName;

  String? _relationship;
  String? get relationship => _$this._relationship;
  set relationship(String? relationship) => _$this._relationship = relationship;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  Address? _address;
  Address? get address => _$this._address;
  set address(Address? address) => _$this._address = address;

  GuarantorBuilder() {
    Guarantor._defaults(this);
  }

  GuarantorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstName = $v.firstName;
      _surname = $v.surname;
      _middleName = $v.middleName;
      _maidenName = $v.maidenName;
      _relationship = $v.relationship;
      _phone = $v.phone;
      _email = $v.email;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Guarantor other) {
    _$v = other as _$Guarantor;
  }

  @override
  void update(void Function(GuarantorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Guarantor build() => _build();

  _$Guarantor _build() {
    final _$result = _$v ??
        _$Guarantor._(
          firstName: firstName,
          surname: surname,
          middleName: middleName,
          maidenName: maidenName,
          relationship: relationship,
          phone: phone,
          email: email,
          address: address,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
