// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BeneficiaryGenderEnum _$beneficiaryGenderEnum_male =
    const BeneficiaryGenderEnum._('male');
const BeneficiaryGenderEnum _$beneficiaryGenderEnum_female =
    const BeneficiaryGenderEnum._('female');

BeneficiaryGenderEnum _$beneficiaryGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$beneficiaryGenderEnum_male;
    case 'female':
      return _$beneficiaryGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<BeneficiaryGenderEnum> _$beneficiaryGenderEnumValues =
    BuiltSet<BeneficiaryGenderEnum>(const <BeneficiaryGenderEnum>[
  _$beneficiaryGenderEnum_male,
  _$beneficiaryGenderEnum_female,
]);

Serializer<BeneficiaryGenderEnum> _$beneficiaryGenderEnumSerializer =
    _$BeneficiaryGenderEnumSerializer();

class _$BeneficiaryGenderEnumSerializer
    implements PrimitiveSerializer<BeneficiaryGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[BeneficiaryGenderEnum];
  @override
  final String wireName = 'BeneficiaryGenderEnum';

  @override
  Object serialize(Serializers serializers, BeneficiaryGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  BeneficiaryGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BeneficiaryGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Beneficiary extends Beneficiary {
  @override
  final String? name;
  @override
  final Date? dateOfBirth;
  @override
  final String? relationship;
  @override
  final BeneficiaryGenderEnum? gender;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? guardianName;
  @override
  final String? guardianPhoneNumber;
  @override
  final String? guardianAddress;

  factory _$Beneficiary([void Function(BeneficiaryBuilder)? updates]) =>
      (BeneficiaryBuilder()..update(updates))._build();

  _$Beneficiary._(
      {this.name,
      this.dateOfBirth,
      this.relationship,
      this.gender,
      this.phone,
      this.email,
      this.guardianName,
      this.guardianPhoneNumber,
      this.guardianAddress})
      : super._();
  @override
  Beneficiary rebuild(void Function(BeneficiaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeneficiaryBuilder toBuilder() => BeneficiaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Beneficiary &&
        name == other.name &&
        dateOfBirth == other.dateOfBirth &&
        relationship == other.relationship &&
        gender == other.gender &&
        phone == other.phone &&
        email == other.email &&
        guardianName == other.guardianName &&
        guardianPhoneNumber == other.guardianPhoneNumber &&
        guardianAddress == other.guardianAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, relationship.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, guardianName.hashCode);
    _$hash = $jc(_$hash, guardianPhoneNumber.hashCode);
    _$hash = $jc(_$hash, guardianAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Beneficiary')
          ..add('name', name)
          ..add('dateOfBirth', dateOfBirth)
          ..add('relationship', relationship)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('email', email)
          ..add('guardianName', guardianName)
          ..add('guardianPhoneNumber', guardianPhoneNumber)
          ..add('guardianAddress', guardianAddress))
        .toString();
  }
}

class BeneficiaryBuilder implements Builder<Beneficiary, BeneficiaryBuilder> {
  _$Beneficiary? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  String? _relationship;
  String? get relationship => _$this._relationship;
  set relationship(String? relationship) => _$this._relationship = relationship;

  BeneficiaryGenderEnum? _gender;
  BeneficiaryGenderEnum? get gender => _$this._gender;
  set gender(BeneficiaryGenderEnum? gender) => _$this._gender = gender;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _guardianName;
  String? get guardianName => _$this._guardianName;
  set guardianName(String? guardianName) => _$this._guardianName = guardianName;

  String? _guardianPhoneNumber;
  String? get guardianPhoneNumber => _$this._guardianPhoneNumber;
  set guardianPhoneNumber(String? guardianPhoneNumber) =>
      _$this._guardianPhoneNumber = guardianPhoneNumber;

  String? _guardianAddress;
  String? get guardianAddress => _$this._guardianAddress;
  set guardianAddress(String? guardianAddress) =>
      _$this._guardianAddress = guardianAddress;

  BeneficiaryBuilder() {
    Beneficiary._defaults(this);
  }

  BeneficiaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _dateOfBirth = $v.dateOfBirth;
      _relationship = $v.relationship;
      _gender = $v.gender;
      _phone = $v.phone;
      _email = $v.email;
      _guardianName = $v.guardianName;
      _guardianPhoneNumber = $v.guardianPhoneNumber;
      _guardianAddress = $v.guardianAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Beneficiary other) {
    _$v = other as _$Beneficiary;
  }

  @override
  void update(void Function(BeneficiaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Beneficiary build() => _build();

  _$Beneficiary _build() {
    final _$result = _$v ??
        _$Beneficiary._(
          name: name,
          dateOfBirth: dateOfBirth,
          relationship: relationship,
          gender: gender,
          phone: phone,
          email: email,
          guardianName: guardianName,
          guardianPhoneNumber: guardianPhoneNumber,
          guardianAddress: guardianAddress,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
