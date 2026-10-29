// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insured_person_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InsuredPersonResponseGenderEnum _$insuredPersonResponseGenderEnum_male =
    const InsuredPersonResponseGenderEnum._('male');
const InsuredPersonResponseGenderEnum _$insuredPersonResponseGenderEnum_female =
    const InsuredPersonResponseGenderEnum._('female');

InsuredPersonResponseGenderEnum _$insuredPersonResponseGenderEnumValueOf(
    String name) {
  switch (name) {
    case 'male':
      return _$insuredPersonResponseGenderEnum_male;
    case 'female':
      return _$insuredPersonResponseGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InsuredPersonResponseGenderEnum>
    _$insuredPersonResponseGenderEnumValues = BuiltSet<
        InsuredPersonResponseGenderEnum>(const <InsuredPersonResponseGenderEnum>[
  _$insuredPersonResponseGenderEnum_male,
  _$insuredPersonResponseGenderEnum_female,
]);

Serializer<InsuredPersonResponseGenderEnum>
    _$insuredPersonResponseGenderEnumSerializer =
    _$InsuredPersonResponseGenderEnumSerializer();

class _$InsuredPersonResponseGenderEnumSerializer
    implements PrimitiveSerializer<InsuredPersonResponseGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[InsuredPersonResponseGenderEnum];
  @override
  final String wireName = 'InsuredPersonResponseGenderEnum';

  @override
  Object serialize(
          Serializers serializers, InsuredPersonResponseGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InsuredPersonResponseGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InsuredPersonResponseGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InsuredPersonResponse extends InsuredPersonResponse {
  @override
  final String? photoUrl;
  @override
  final String? signatureUrl;
  @override
  final HealthForm? health;
  @override
  final String? personId;
  @override
  final String? bvn;
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

  factory _$InsuredPersonResponse(
          [void Function(InsuredPersonResponseBuilder)? updates]) =>
      (InsuredPersonResponseBuilder()..update(updates))._build();

  _$InsuredPersonResponse._(
      {this.photoUrl,
      this.signatureUrl,
      this.health,
      this.personId,
      this.bvn,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.occupation})
      : super._();
  @override
  InsuredPersonResponse rebuild(
          void Function(InsuredPersonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InsuredPersonResponseBuilder toBuilder() =>
      InsuredPersonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InsuredPersonResponse &&
        photoUrl == other.photoUrl &&
        signatureUrl == other.signatureUrl &&
        health == other.health &&
        personId == other.personId &&
        bvn == other.bvn &&
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
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, signatureUrl.hashCode);
    _$hash = $jc(_$hash, health.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, bvn.hashCode);
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
    return (newBuiltValueToStringHelper(r'InsuredPersonResponse')
          ..add('photoUrl', photoUrl)
          ..add('signatureUrl', signatureUrl)
          ..add('health', health)
          ..add('personId', personId)
          ..add('bvn', bvn)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('occupation', occupation))
        .toString();
  }
}

class InsuredPersonResponseBuilder
    implements
        Builder<InsuredPersonResponse, InsuredPersonResponseBuilder>,
        CustomerPersonalBuilder {
  _$InsuredPersonResponse? _$v;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(covariant String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _signatureUrl;
  String? get signatureUrl => _$this._signatureUrl;
  set signatureUrl(covariant String? signatureUrl) =>
      _$this._signatureUrl = signatureUrl;

  HealthFormBuilder? _health;
  HealthFormBuilder get health => _$this._health ??= HealthFormBuilder();
  set health(covariant HealthFormBuilder? health) => _$this._health = health;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(covariant String? personId) => _$this._personId = personId;

  String? _bvn;
  String? get bvn => _$this._bvn;
  set bvn(covariant String? bvn) => _$this._bvn = bvn;

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

  InsuredPersonResponseBuilder() {
    InsuredPersonResponse._defaults(this);
  }

  InsuredPersonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _photoUrl = $v.photoUrl;
      _signatureUrl = $v.signatureUrl;
      _health = $v.health?.toBuilder();
      _personId = $v.personId;
      _bvn = $v.bvn;
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
  void replace(covariant InsuredPersonResponse other) {
    _$v = other as _$InsuredPersonResponse;
  }

  @override
  void update(void Function(InsuredPersonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InsuredPersonResponse build() => _build();

  _$InsuredPersonResponse _build() {
    _$InsuredPersonResponse _$result;
    try {
      _$result = _$v ??
          _$InsuredPersonResponse._(
            photoUrl: photoUrl,
            signatureUrl: signatureUrl,
            health: _health?.build(),
            personId: personId,
            bvn: bvn,
            firstName: firstName,
            lastName: lastName,
            dateOfBirth: dateOfBirth,
            gender: gender,
            phone: phone,
            occupation: occupation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'health';
        _health?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InsuredPersonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
