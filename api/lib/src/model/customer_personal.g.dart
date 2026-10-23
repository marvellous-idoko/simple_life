// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_personal.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CustomerPersonalGenderEnum _$customerPersonalGenderEnum_male =
    const CustomerPersonalGenderEnum._('male');
const CustomerPersonalGenderEnum _$customerPersonalGenderEnum_female =
    const CustomerPersonalGenderEnum._('female');

CustomerPersonalGenderEnum _$customerPersonalGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$customerPersonalGenderEnum_male;
    case 'female':
      return _$customerPersonalGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomerPersonalGenderEnum> _$customerPersonalGenderEnumValues =
    BuiltSet<CustomerPersonalGenderEnum>(const <CustomerPersonalGenderEnum>[
  _$customerPersonalGenderEnum_male,
  _$customerPersonalGenderEnum_female,
]);

Serializer<CustomerPersonalGenderEnum> _$customerPersonalGenderEnumSerializer =
    _$CustomerPersonalGenderEnumSerializer();

class _$CustomerPersonalGenderEnumSerializer
    implements PrimitiveSerializer<CustomerPersonalGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomerPersonalGenderEnum];
  @override
  final String wireName = 'CustomerPersonalGenderEnum';

  @override
  Object serialize(Serializers serializers, CustomerPersonalGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CustomerPersonalGenderEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CustomerPersonalGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class CustomerPersonalBuilder {
  void replace(CustomerPersonal other);
  void update(void Function(CustomerPersonalBuilder) updates);
  String? get firstName;
  set firstName(String? firstName);

  String? get lastName;
  set lastName(String? lastName);

  Date? get dateOfBirth;
  set dateOfBirth(Date? dateOfBirth);

  CustomerPersonalGenderEnum? get gender;
  set gender(CustomerPersonalGenderEnum? gender);

  String? get phone;
  set phone(String? phone);

  String? get occupation;
  set occupation(String? occupation);
}

class _$$CustomerPersonal extends $CustomerPersonal {
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

  factory _$$CustomerPersonal(
          [void Function($CustomerPersonalBuilder)? updates]) =>
      ($CustomerPersonalBuilder()..update(updates))._build();

  _$$CustomerPersonal._(
      {this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.occupation})
      : super._();
  @override
  $CustomerPersonal rebuild(void Function($CustomerPersonalBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $CustomerPersonalBuilder toBuilder() =>
      $CustomerPersonalBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $CustomerPersonal &&
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
    return (newBuiltValueToStringHelper(r'$CustomerPersonal')
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('occupation', occupation))
        .toString();
  }
}

class $CustomerPersonalBuilder
    implements
        Builder<$CustomerPersonal, $CustomerPersonalBuilder>,
        CustomerPersonalBuilder {
  _$$CustomerPersonal? _$v;

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

  $CustomerPersonalBuilder() {
    $CustomerPersonal._defaults(this);
  }

  $CustomerPersonalBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(covariant $CustomerPersonal other) {
    _$v = other as _$$CustomerPersonal;
  }

  @override
  void update(void Function($CustomerPersonalBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $CustomerPersonal build() => _build();

  _$$CustomerPersonal _build() {
    final _$result = _$v ??
        _$$CustomerPersonal._(
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
