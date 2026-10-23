// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_submission.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentSubmissionGenderEnum _$agentSubmissionGenderEnum_male =
    const AgentSubmissionGenderEnum._('male');
const AgentSubmissionGenderEnum _$agentSubmissionGenderEnum_female =
    const AgentSubmissionGenderEnum._('female');

AgentSubmissionGenderEnum _$agentSubmissionGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$agentSubmissionGenderEnum_male;
    case 'female':
      return _$agentSubmissionGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentSubmissionGenderEnum> _$agentSubmissionGenderEnumValues =
    BuiltSet<AgentSubmissionGenderEnum>(const <AgentSubmissionGenderEnum>[
  _$agentSubmissionGenderEnum_male,
  _$agentSubmissionGenderEnum_female,
]);

const AgentSubmissionMaritalStatusEnum
    _$agentSubmissionMaritalStatusEnum_single =
    const AgentSubmissionMaritalStatusEnum._('single');
const AgentSubmissionMaritalStatusEnum
    _$agentSubmissionMaritalStatusEnum_married =
    const AgentSubmissionMaritalStatusEnum._('married');
const AgentSubmissionMaritalStatusEnum
    _$agentSubmissionMaritalStatusEnum_divorce =
    const AgentSubmissionMaritalStatusEnum._('divorce');
const AgentSubmissionMaritalStatusEnum
    _$agentSubmissionMaritalStatusEnum_widowed =
    const AgentSubmissionMaritalStatusEnum._('widowed');

AgentSubmissionMaritalStatusEnum _$agentSubmissionMaritalStatusEnumValueOf(
    String name) {
  switch (name) {
    case 'single':
      return _$agentSubmissionMaritalStatusEnum_single;
    case 'married':
      return _$agentSubmissionMaritalStatusEnum_married;
    case 'divorce':
      return _$agentSubmissionMaritalStatusEnum_divorce;
    case 'widowed':
      return _$agentSubmissionMaritalStatusEnum_widowed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentSubmissionMaritalStatusEnum>
    _$agentSubmissionMaritalStatusEnumValues = BuiltSet<
        AgentSubmissionMaritalStatusEnum>(const <AgentSubmissionMaritalStatusEnum>[
  _$agentSubmissionMaritalStatusEnum_single,
  _$agentSubmissionMaritalStatusEnum_married,
  _$agentSubmissionMaritalStatusEnum_divorce,
  _$agentSubmissionMaritalStatusEnum_widowed,
]);

const AgentSubmissionAgencyEnum _$agentSubmissionAgencyEnum_partTime =
    const AgentSubmissionAgencyEnum._('partTime');
const AgentSubmissionAgencyEnum _$agentSubmissionAgencyEnum_fullTime =
    const AgentSubmissionAgencyEnum._('fullTime');

AgentSubmissionAgencyEnum _$agentSubmissionAgencyEnumValueOf(String name) {
  switch (name) {
    case 'partTime':
      return _$agentSubmissionAgencyEnum_partTime;
    case 'fullTime':
      return _$agentSubmissionAgencyEnum_fullTime;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentSubmissionAgencyEnum> _$agentSubmissionAgencyEnumValues =
    BuiltSet<AgentSubmissionAgencyEnum>(const <AgentSubmissionAgencyEnum>[
  _$agentSubmissionAgencyEnum_partTime,
  _$agentSubmissionAgencyEnum_fullTime,
]);

const AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnum_SSCE =
    const AgentSubmissionQualificationEnum._('SSCE');
const AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnum_BSC =
    const AgentSubmissionQualificationEnum._('BSC');
const AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnum_OND =
    const AgentSubmissionQualificationEnum._('OND');
const AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnum_HND =
    const AgentSubmissionQualificationEnum._('HND');
const AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnum_MSC =
    const AgentSubmissionQualificationEnum._('MSC');
const AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnum_PDG =
    const AgentSubmissionQualificationEnum._('PDG');

AgentSubmissionQualificationEnum _$agentSubmissionQualificationEnumValueOf(
    String name) {
  switch (name) {
    case 'SSCE':
      return _$agentSubmissionQualificationEnum_SSCE;
    case 'BSC':
      return _$agentSubmissionQualificationEnum_BSC;
    case 'OND':
      return _$agentSubmissionQualificationEnum_OND;
    case 'HND':
      return _$agentSubmissionQualificationEnum_HND;
    case 'MSC':
      return _$agentSubmissionQualificationEnum_MSC;
    case 'PDG':
      return _$agentSubmissionQualificationEnum_PDG;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentSubmissionQualificationEnum>
    _$agentSubmissionQualificationEnumValues = BuiltSet<
        AgentSubmissionQualificationEnum>(const <AgentSubmissionQualificationEnum>[
  _$agentSubmissionQualificationEnum_SSCE,
  _$agentSubmissionQualificationEnum_BSC,
  _$agentSubmissionQualificationEnum_OND,
  _$agentSubmissionQualificationEnum_HND,
  _$agentSubmissionQualificationEnum_MSC,
  _$agentSubmissionQualificationEnum_PDG,
]);

Serializer<AgentSubmissionGenderEnum> _$agentSubmissionGenderEnumSerializer =
    _$AgentSubmissionGenderEnumSerializer();
Serializer<AgentSubmissionMaritalStatusEnum>
    _$agentSubmissionMaritalStatusEnumSerializer =
    _$AgentSubmissionMaritalStatusEnumSerializer();
Serializer<AgentSubmissionAgencyEnum> _$agentSubmissionAgencyEnumSerializer =
    _$AgentSubmissionAgencyEnumSerializer();
Serializer<AgentSubmissionQualificationEnum>
    _$agentSubmissionQualificationEnumSerializer =
    _$AgentSubmissionQualificationEnumSerializer();

class _$AgentSubmissionGenderEnumSerializer
    implements PrimitiveSerializer<AgentSubmissionGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentSubmissionGenderEnum];
  @override
  final String wireName = 'AgentSubmissionGenderEnum';

  @override
  Object serialize(Serializers serializers, AgentSubmissionGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentSubmissionGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentSubmissionGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentSubmissionMaritalStatusEnumSerializer
    implements PrimitiveSerializer<AgentSubmissionMaritalStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'single': 'single',
    'married': 'married',
    'divorce': 'divorce',
    'widowed': 'widowed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'single': 'single',
    'married': 'married',
    'divorce': 'divorce',
    'widowed': 'widowed',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentSubmissionMaritalStatusEnum];
  @override
  final String wireName = 'AgentSubmissionMaritalStatusEnum';

  @override
  Object serialize(
          Serializers serializers, AgentSubmissionMaritalStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentSubmissionMaritalStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentSubmissionMaritalStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentSubmissionAgencyEnumSerializer
    implements PrimitiveSerializer<AgentSubmissionAgencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'partTime': 'partTime',
    'fullTime': 'fullTime',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'partTime': 'partTime',
    'fullTime': 'fullTime',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentSubmissionAgencyEnum];
  @override
  final String wireName = 'AgentSubmissionAgencyEnum';

  @override
  Object serialize(Serializers serializers, AgentSubmissionAgencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentSubmissionAgencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentSubmissionAgencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentSubmissionQualificationEnumSerializer
    implements PrimitiveSerializer<AgentSubmissionQualificationEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SSCE': 'SSCE',
    'BSC': 'BSC',
    'OND': 'OND',
    'HND': 'HND',
    'MSC': 'MSC',
    'PDG': 'PDG',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SSCE': 'SSCE',
    'BSC': 'BSC',
    'OND': 'OND',
    'HND': 'HND',
    'MSC': 'MSC',
    'PDG': 'PDG',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentSubmissionQualificationEnum];
  @override
  final String wireName = 'AgentSubmissionQualificationEnum';

  @override
  Object serialize(
          Serializers serializers, AgentSubmissionQualificationEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentSubmissionQualificationEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentSubmissionQualificationEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentSubmission extends AgentSubmission {
  @override
  final AgentSubmissionQualificationEnum? qualification;
  @override
  final AgentSubmissionAgencyEnum? agency;
  @override
  final String? stateOfOrigin;
  @override
  final String? maidenName;
  @override
  final Address? residentAddress;
  @override
  final Address? officeAddress;
  @override
  final AgentSubmissionMaritalStatusEnum? maritalStatus;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final Date? dateOfBirth;
  @override
  final CustomerPersonalGenderEnum? gender;
  @override
  final String? phone;
  @override
  final String? occupation;

  factory _$AgentSubmission([void Function(AgentSubmissionBuilder)? updates]) =>
      (AgentSubmissionBuilder()..update(updates))._build();

  _$AgentSubmission._(
      {this.qualification,
      this.agency,
      this.stateOfOrigin,
      this.maidenName,
      this.residentAddress,
      this.officeAddress,
      this.maritalStatus,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.occupation})
      : super._();
  @override
  AgentSubmission rebuild(void Function(AgentSubmissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentSubmissionBuilder toBuilder() => AgentSubmissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentSubmission &&
        qualification == other.qualification &&
        agency == other.agency &&
        stateOfOrigin == other.stateOfOrigin &&
        maidenName == other.maidenName &&
        residentAddress == other.residentAddress &&
        officeAddress == other.officeAddress &&
        maritalStatus == other.maritalStatus &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender &&
        phone == other.phone &&
        occupation == other.occupation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, qualification.hashCode);
    _$hash = $jc(_$hash, agency.hashCode);
    _$hash = $jc(_$hash, stateOfOrigin.hashCode);
    _$hash = $jc(_$hash, maidenName.hashCode);
    _$hash = $jc(_$hash, residentAddress.hashCode);
    _$hash = $jc(_$hash, officeAddress.hashCode);
    _$hash = $jc(_$hash, maritalStatus.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, occupation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentSubmission')
          ..add('qualification', qualification)
          ..add('agency', agency)
          ..add('stateOfOrigin', stateOfOrigin)
          ..add('maidenName', maidenName)
          ..add('residentAddress', residentAddress)
          ..add('officeAddress', officeAddress)
          ..add('maritalStatus', maritalStatus)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('occupation', occupation))
        .toString();
  }
}

class AgentSubmissionBuilder
    implements
        Builder<AgentSubmission, AgentSubmissionBuilder>,
        CustomerPersonalBuilder {
  _$AgentSubmission? _$v;

  AgentSubmissionQualificationEnum? _qualification;
  AgentSubmissionQualificationEnum? get qualification => _$this._qualification;
  set qualification(
          covariant AgentSubmissionQualificationEnum? qualification) =>
      _$this._qualification = qualification;

  AgentSubmissionAgencyEnum? _agency;
  AgentSubmissionAgencyEnum? get agency => _$this._agency;
  set agency(covariant AgentSubmissionAgencyEnum? agency) =>
      _$this._agency = agency;

  String? _stateOfOrigin;
  String? get stateOfOrigin => _$this._stateOfOrigin;
  set stateOfOrigin(covariant String? stateOfOrigin) =>
      _$this._stateOfOrigin = stateOfOrigin;

  String? _maidenName;
  String? get maidenName => _$this._maidenName;
  set maidenName(covariant String? maidenName) =>
      _$this._maidenName = maidenName;

  Address? _residentAddress;
  Address? get residentAddress => _$this._residentAddress;
  set residentAddress(covariant Address? residentAddress) =>
      _$this._residentAddress = residentAddress;

  Address? _officeAddress;
  Address? get officeAddress => _$this._officeAddress;
  set officeAddress(covariant Address? officeAddress) =>
      _$this._officeAddress = officeAddress;

  AgentSubmissionMaritalStatusEnum? _maritalStatus;
  AgentSubmissionMaritalStatusEnum? get maritalStatus => _$this._maritalStatus;
  set maritalStatus(
          covariant AgentSubmissionMaritalStatusEnum? maritalStatus) =>
      _$this._maritalStatus = maritalStatus;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(covariant String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(covariant String? lastName) => _$this._lastName = lastName;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(covariant Date? dateOfBirth) =>
      _$this._dateOfBirth = dateOfBirth;

  CustomerPersonalGenderEnum? _gender;
  CustomerPersonalGenderEnum? get gender => _$this._gender;
  set gender(covariant CustomerPersonalGenderEnum? gender) =>
      _$this._gender = gender;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(covariant String? phone) => _$this._phone = phone;

  String? _occupation;
  String? get occupation => _$this._occupation;
  set occupation(covariant String? occupation) =>
      _$this._occupation = occupation;

  AgentSubmissionBuilder() {
    AgentSubmission._defaults(this);
  }

  AgentSubmissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _qualification = $v.qualification;
      _agency = $v.agency;
      _stateOfOrigin = $v.stateOfOrigin;
      _maidenName = $v.maidenName;
      _residentAddress = $v.residentAddress;
      _officeAddress = $v.officeAddress;
      _maritalStatus = $v.maritalStatus;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _dateOfBirth = $v.dateOfBirth;
      _gender = $v.gender;
      _phone = $v.phone;
      _occupation = $v.occupation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentSubmission other) {
    _$v = other as _$AgentSubmission;
  }

  @override
  void update(void Function(AgentSubmissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentSubmission build() => _build();

  _$AgentSubmission _build() {
    final _$result = _$v ??
        _$AgentSubmission._(
          qualification: qualification,
          agency: agency,
          stateOfOrigin: stateOfOrigin,
          maidenName: maidenName,
          residentAddress: residentAddress,
          officeAddress: officeAddress,
          maritalStatus: maritalStatus,
          firstName: firstName,
          lastName: lastName,
          dateOfBirth: dateOfBirth,
          gender: gender,
          phone: phone,
          occupation: occupation,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
