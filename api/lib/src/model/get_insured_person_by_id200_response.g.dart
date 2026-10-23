// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_insured_person_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetInsuredPersonById200ResponseGenderEnum
    _$getInsuredPersonById200ResponseGenderEnum_male =
    const GetInsuredPersonById200ResponseGenderEnum._('male');
const GetInsuredPersonById200ResponseGenderEnum
    _$getInsuredPersonById200ResponseGenderEnum_female =
    const GetInsuredPersonById200ResponseGenderEnum._('female');

GetInsuredPersonById200ResponseGenderEnum
    _$getInsuredPersonById200ResponseGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$getInsuredPersonById200ResponseGenderEnum_male;
    case 'female':
      return _$getInsuredPersonById200ResponseGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetInsuredPersonById200ResponseGenderEnum>
    _$getInsuredPersonById200ResponseGenderEnumValues = BuiltSet<
        GetInsuredPersonById200ResponseGenderEnum>(const <GetInsuredPersonById200ResponseGenderEnum>[
  _$getInsuredPersonById200ResponseGenderEnum_male,
  _$getInsuredPersonById200ResponseGenderEnum_female,
]);

Serializer<GetInsuredPersonById200ResponseGenderEnum>
    _$getInsuredPersonById200ResponseGenderEnumSerializer =
    _$GetInsuredPersonById200ResponseGenderEnumSerializer();

class _$GetInsuredPersonById200ResponseGenderEnumSerializer
    implements PrimitiveSerializer<GetInsuredPersonById200ResponseGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[
    GetInsuredPersonById200ResponseGenderEnum
  ];
  @override
  final String wireName = 'GetInsuredPersonById200ResponseGenderEnum';

  @override
  Object serialize(Serializers serializers,
          GetInsuredPersonById200ResponseGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetInsuredPersonById200ResponseGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetInsuredPersonById200ResponseGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetInsuredPersonById200Response
    extends GetInsuredPersonById200Response {
  @override
  final HealthForm? health;
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

  factory _$GetInsuredPersonById200Response(
          [void Function(GetInsuredPersonById200ResponseBuilder)? updates]) =>
      (GetInsuredPersonById200ResponseBuilder()..update(updates))._build();

  _$GetInsuredPersonById200Response._(
      {this.health,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.occupation})
      : super._();
  @override
  GetInsuredPersonById200Response rebuild(
          void Function(GetInsuredPersonById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInsuredPersonById200ResponseBuilder toBuilder() =>
      GetInsuredPersonById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInsuredPersonById200Response &&
        health == other.health &&
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
    _$hash = $jc(_$hash, health.hashCode);
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
    return (newBuiltValueToStringHelper(r'GetInsuredPersonById200Response')
          ..add('health', health)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('occupation', occupation))
        .toString();
  }
}

class GetInsuredPersonById200ResponseBuilder
    implements
        Builder<GetInsuredPersonById200Response,
            GetInsuredPersonById200ResponseBuilder>,
        CustomerPersonalBuilder {
  _$GetInsuredPersonById200Response? _$v;

  HealthForm? _health;
  HealthForm? get health => _$this._health;
  set health(covariant HealthForm? health) => _$this._health = health;

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

  GetInsuredPersonById200ResponseBuilder() {
    GetInsuredPersonById200Response._defaults(this);
  }

  GetInsuredPersonById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _health = $v.health;
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
  void replace(covariant GetInsuredPersonById200Response other) {
    _$v = other as _$GetInsuredPersonById200Response;
  }

  @override
  void update(void Function(GetInsuredPersonById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInsuredPersonById200Response build() => _build();

  _$GetInsuredPersonById200Response _build() {
    final _$result = _$v ??
        _$GetInsuredPersonById200Response._(
          health: health,
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
