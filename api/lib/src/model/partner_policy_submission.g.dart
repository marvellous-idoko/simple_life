// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_policy_submission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PartnerPolicySubmissionGenderEnum
    _$partnerPolicySubmissionGenderEnum_male =
    const PartnerPolicySubmissionGenderEnum._('male');
const PartnerPolicySubmissionGenderEnum
    _$partnerPolicySubmissionGenderEnum_female =
    const PartnerPolicySubmissionGenderEnum._('female');

PartnerPolicySubmissionGenderEnum _$partnerPolicySubmissionGenderEnumValueOf(
    String name) {
  switch (name) {
    case 'male':
      return _$partnerPolicySubmissionGenderEnum_male;
    case 'female':
      return _$partnerPolicySubmissionGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PartnerPolicySubmissionGenderEnum>
    _$partnerPolicySubmissionGenderEnumValues = BuiltSet<
        PartnerPolicySubmissionGenderEnum>(const <PartnerPolicySubmissionGenderEnum>[
  _$partnerPolicySubmissionGenderEnum_male,
  _$partnerPolicySubmissionGenderEnum_female,
]);

const PartnerPolicySubmissionPartnerTypeEnum
    _$partnerPolicySubmissionPartnerTypeEnum_companyPartner =
    const PartnerPolicySubmissionPartnerTypeEnum._('companyPartner');
const PartnerPolicySubmissionPartnerTypeEnum
    _$partnerPolicySubmissionPartnerTypeEnum_individualPartner =
    const PartnerPolicySubmissionPartnerTypeEnum._('individualPartner');
const PartnerPolicySubmissionPartnerTypeEnum
    _$partnerPolicySubmissionPartnerTypeEnum_broker =
    const PartnerPolicySubmissionPartnerTypeEnum._('broker');

PartnerPolicySubmissionPartnerTypeEnum
    _$partnerPolicySubmissionPartnerTypeEnumValueOf(String name) {
  switch (name) {
    case 'companyPartner':
      return _$partnerPolicySubmissionPartnerTypeEnum_companyPartner;
    case 'individualPartner':
      return _$partnerPolicySubmissionPartnerTypeEnum_individualPartner;
    case 'broker':
      return _$partnerPolicySubmissionPartnerTypeEnum_broker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PartnerPolicySubmissionPartnerTypeEnum>
    _$partnerPolicySubmissionPartnerTypeEnumValues = BuiltSet<
        PartnerPolicySubmissionPartnerTypeEnum>(const <PartnerPolicySubmissionPartnerTypeEnum>[
  _$partnerPolicySubmissionPartnerTypeEnum_companyPartner,
  _$partnerPolicySubmissionPartnerTypeEnum_individualPartner,
  _$partnerPolicySubmissionPartnerTypeEnum_broker,
]);

const PartnerPolicySubmissionProductIdEnum
    _$partnerPolicySubmissionProductIdEnum_number67 =
    const PartnerPolicySubmissionProductIdEnum._('number67');
const PartnerPolicySubmissionProductIdEnum
    _$partnerPolicySubmissionProductIdEnum_number69 =
    const PartnerPolicySubmissionProductIdEnum._('number69');

PartnerPolicySubmissionProductIdEnum
    _$partnerPolicySubmissionProductIdEnumValueOf(String name) {
  switch (name) {
    case 'number67':
      return _$partnerPolicySubmissionProductIdEnum_number67;
    case 'number69':
      return _$partnerPolicySubmissionProductIdEnum_number69;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PartnerPolicySubmissionProductIdEnum>
    _$partnerPolicySubmissionProductIdEnumValues = BuiltSet<
        PartnerPolicySubmissionProductIdEnum>(const <PartnerPolicySubmissionProductIdEnum>[
  _$partnerPolicySubmissionProductIdEnum_number67,
  _$partnerPolicySubmissionProductIdEnum_number69,
]);

Serializer<PartnerPolicySubmissionGenderEnum>
    _$partnerPolicySubmissionGenderEnumSerializer =
    _$PartnerPolicySubmissionGenderEnumSerializer();
Serializer<PartnerPolicySubmissionPartnerTypeEnum>
    _$partnerPolicySubmissionPartnerTypeEnumSerializer =
    _$PartnerPolicySubmissionPartnerTypeEnumSerializer();
Serializer<PartnerPolicySubmissionProductIdEnum>
    _$partnerPolicySubmissionProductIdEnumSerializer =
    _$PartnerPolicySubmissionProductIdEnumSerializer();

class _$PartnerPolicySubmissionGenderEnumSerializer
    implements PrimitiveSerializer<PartnerPolicySubmissionGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[PartnerPolicySubmissionGenderEnum];
  @override
  final String wireName = 'PartnerPolicySubmissionGenderEnum';

  @override
  Object serialize(
          Serializers serializers, PartnerPolicySubmissionGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PartnerPolicySubmissionGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PartnerPolicySubmissionGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PartnerPolicySubmissionPartnerTypeEnumSerializer
    implements PrimitiveSerializer<PartnerPolicySubmissionPartnerTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'companyPartner': 'companyPartner',
    'individualPartner': 'individualPartner',
    'broker': 'broker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'companyPartner': 'companyPartner',
    'individualPartner': 'individualPartner',
    'broker': 'broker',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PartnerPolicySubmissionPartnerTypeEnum
  ];
  @override
  final String wireName = 'PartnerPolicySubmissionPartnerTypeEnum';

  @override
  Object serialize(Serializers serializers,
          PartnerPolicySubmissionPartnerTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PartnerPolicySubmissionPartnerTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PartnerPolicySubmissionPartnerTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PartnerPolicySubmissionProductIdEnumSerializer
    implements PrimitiveSerializer<PartnerPolicySubmissionProductIdEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number67': 67,
    'number69': 69,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    67: 'number67',
    69: 'number69',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PartnerPolicySubmissionProductIdEnum
  ];
  @override
  final String wireName = 'PartnerPolicySubmissionProductIdEnum';

  @override
  Object serialize(
          Serializers serializers, PartnerPolicySubmissionProductIdEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PartnerPolicySubmissionProductIdEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PartnerPolicySubmissionProductIdEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PartnerPolicySubmission extends PartnerPolicySubmission {
  @override
  final String? name;
  @override
  final PartnerPolicySubmissionGenderEnum? gender;
  @override
  final num? age;
  @override
  final num? premium;
  @override
  final num? sumAssured;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final String? nationality;
  @override
  final BuiltList<PartnerPolicySubmissionBeneficiaryInner>? beneficiary;
  @override
  final PartnerPolicySubmissionPartnerTypeEnum? partnerType;
  @override
  final String? partnerPolicyId;
  @override
  final String? policyNumber;
  @override
  final String? idCardUrl;
  @override
  final PartnerPolicySubmissionProductIdEnum? productId;
  @override
  final int? policyDurationInDays;
  @override
  final String? dateOfSubmission;

  factory _$PartnerPolicySubmission(
          [void Function(PartnerPolicySubmissionBuilder)? updates]) =>
      (PartnerPolicySubmissionBuilder()..update(updates))._build();

  _$PartnerPolicySubmission._(
      {this.name,
      this.gender,
      this.age,
      this.premium,
      this.sumAssured,
      this.address,
      this.email,
      this.nationality,
      this.beneficiary,
      this.partnerType,
      this.partnerPolicyId,
      this.policyNumber,
      this.idCardUrl,
      this.productId,
      this.policyDurationInDays,
      this.dateOfSubmission})
      : super._();
  @override
  PartnerPolicySubmission rebuild(
          void Function(PartnerPolicySubmissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartnerPolicySubmissionBuilder toBuilder() =>
      PartnerPolicySubmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PartnerPolicySubmission &&
        name == other.name &&
        gender == other.gender &&
        age == other.age &&
        premium == other.premium &&
        sumAssured == other.sumAssured &&
        address == other.address &&
        email == other.email &&
        nationality == other.nationality &&
        beneficiary == other.beneficiary &&
        partnerType == other.partnerType &&
        partnerPolicyId == other.partnerPolicyId &&
        policyNumber == other.policyNumber &&
        idCardUrl == other.idCardUrl &&
        productId == other.productId &&
        policyDurationInDays == other.policyDurationInDays &&
        dateOfSubmission == other.dateOfSubmission;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, nationality.hashCode);
    _$hash = $jc(_$hash, beneficiary.hashCode);
    _$hash = $jc(_$hash, partnerType.hashCode);
    _$hash = $jc(_$hash, partnerPolicyId.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, idCardUrl.hashCode);
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, policyDurationInDays.hashCode);
    _$hash = $jc(_$hash, dateOfSubmission.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PartnerPolicySubmission')
          ..add('name', name)
          ..add('gender', gender)
          ..add('age', age)
          ..add('premium', premium)
          ..add('sumAssured', sumAssured)
          ..add('address', address)
          ..add('email', email)
          ..add('nationality', nationality)
          ..add('beneficiary', beneficiary)
          ..add('partnerType', partnerType)
          ..add('partnerPolicyId', partnerPolicyId)
          ..add('policyNumber', policyNumber)
          ..add('idCardUrl', idCardUrl)
          ..add('productId', productId)
          ..add('policyDurationInDays', policyDurationInDays)
          ..add('dateOfSubmission', dateOfSubmission))
        .toString();
  }
}

class PartnerPolicySubmissionBuilder
    implements
        Builder<PartnerPolicySubmission, PartnerPolicySubmissionBuilder> {
  _$PartnerPolicySubmission? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PartnerPolicySubmissionGenderEnum? _gender;
  PartnerPolicySubmissionGenderEnum? get gender => _$this._gender;
  set gender(PartnerPolicySubmissionGenderEnum? gender) =>
      _$this._gender = gender;

  num? _age;
  num? get age => _$this._age;
  set age(num? age) => _$this._age = age;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(num? sumAssured) => _$this._sumAssured = sumAssured;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _nationality;
  String? get nationality => _$this._nationality;
  set nationality(String? nationality) => _$this._nationality = nationality;

  ListBuilder<PartnerPolicySubmissionBeneficiaryInner>? _beneficiary;
  ListBuilder<PartnerPolicySubmissionBeneficiaryInner> get beneficiary =>
      _$this._beneficiary ??=
          ListBuilder<PartnerPolicySubmissionBeneficiaryInner>();
  set beneficiary(
          ListBuilder<PartnerPolicySubmissionBeneficiaryInner>? beneficiary) =>
      _$this._beneficiary = beneficiary;

  PartnerPolicySubmissionPartnerTypeEnum? _partnerType;
  PartnerPolicySubmissionPartnerTypeEnum? get partnerType =>
      _$this._partnerType;
  set partnerType(PartnerPolicySubmissionPartnerTypeEnum? partnerType) =>
      _$this._partnerType = partnerType;

  String? _partnerPolicyId;
  String? get partnerPolicyId => _$this._partnerPolicyId;
  set partnerPolicyId(String? partnerPolicyId) =>
      _$this._partnerPolicyId = partnerPolicyId;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _idCardUrl;
  String? get idCardUrl => _$this._idCardUrl;
  set idCardUrl(String? idCardUrl) => _$this._idCardUrl = idCardUrl;

  PartnerPolicySubmissionProductIdEnum? _productId;
  PartnerPolicySubmissionProductIdEnum? get productId => _$this._productId;
  set productId(PartnerPolicySubmissionProductIdEnum? productId) =>
      _$this._productId = productId;

  int? _policyDurationInDays;
  int? get policyDurationInDays => _$this._policyDurationInDays;
  set policyDurationInDays(int? policyDurationInDays) =>
      _$this._policyDurationInDays = policyDurationInDays;

  String? _dateOfSubmission;
  String? get dateOfSubmission => _$this._dateOfSubmission;
  set dateOfSubmission(String? dateOfSubmission) =>
      _$this._dateOfSubmission = dateOfSubmission;

  PartnerPolicySubmissionBuilder() {
    PartnerPolicySubmission._defaults(this);
  }

  PartnerPolicySubmissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _gender = $v.gender;
      _age = $v.age;
      _premium = $v.premium;
      _sumAssured = $v.sumAssured;
      _address = $v.address;
      _email = $v.email;
      _nationality = $v.nationality;
      _beneficiary = $v.beneficiary?.toBuilder();
      _partnerType = $v.partnerType;
      _partnerPolicyId = $v.partnerPolicyId;
      _policyNumber = $v.policyNumber;
      _idCardUrl = $v.idCardUrl;
      _productId = $v.productId;
      _policyDurationInDays = $v.policyDurationInDays;
      _dateOfSubmission = $v.dateOfSubmission;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PartnerPolicySubmission other) {
    _$v = other as _$PartnerPolicySubmission;
  }

  @override
  void update(void Function(PartnerPolicySubmissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PartnerPolicySubmission build() => _build();

  _$PartnerPolicySubmission _build() {
    _$PartnerPolicySubmission _$result;
    try {
      _$result = _$v ??
          _$PartnerPolicySubmission._(
            name: name,
            gender: gender,
            age: age,
            premium: premium,
            sumAssured: sumAssured,
            address: address,
            email: email,
            nationality: nationality,
            beneficiary: _beneficiary?.build(),
            partnerType: partnerType,
            partnerPolicyId: partnerPolicyId,
            policyNumber: policyNumber,
            idCardUrl: idCardUrl,
            productId: productId,
            policyDurationInDays: policyDurationInDays,
            dateOfSubmission: dateOfSubmission,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'beneficiary';
        _beneficiary?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PartnerPolicySubmission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
