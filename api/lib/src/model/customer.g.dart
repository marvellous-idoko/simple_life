// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CustomerGenderEnum _$customerGenderEnum_male =
    const CustomerGenderEnum._('male');
const CustomerGenderEnum _$customerGenderEnum_female =
    const CustomerGenderEnum._('female');

CustomerGenderEnum _$customerGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$customerGenderEnum_male;
    case 'female':
      return _$customerGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CustomerGenderEnum> _$customerGenderEnumValues =
    BuiltSet<CustomerGenderEnum>(const <CustomerGenderEnum>[
  _$customerGenderEnum_male,
  _$customerGenderEnum_female,
]);

Serializer<CustomerGenderEnum> _$customerGenderEnumSerializer =
    _$CustomerGenderEnumSerializer();

class _$CustomerGenderEnumSerializer
    implements PrimitiveSerializer<CustomerGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[CustomerGenderEnum];
  @override
  final String wireName = 'CustomerGenderEnum';

  @override
  Object serialize(Serializers serializers, CustomerGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CustomerGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CustomerGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Customer extends Customer {
  @override
  final Address? address;
  @override
  final String? idCardImgUrl;
  @override
  final String customerId;
  @override
  final String? utilityImgUrl;
  @override
  final IdDetails? idDetails;
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

  factory _$Customer([void Function(CustomerBuilder)? updates]) =>
      (CustomerBuilder()..update(updates))._build();

  _$Customer._(
      {this.address,
      this.idCardImgUrl,
      required this.customerId,
      this.utilityImgUrl,
      this.idDetails,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.occupation})
      : super._();
  @override
  Customer rebuild(void Function(CustomerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerBuilder toBuilder() => CustomerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Customer &&
        address == other.address &&
        idCardImgUrl == other.idCardImgUrl &&
        customerId == other.customerId &&
        utilityImgUrl == other.utilityImgUrl &&
        idDetails == other.idDetails &&
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
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, idCardImgUrl.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, utilityImgUrl.hashCode);
    _$hash = $jc(_$hash, idDetails.hashCode);
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
    return (newBuiltValueToStringHelper(r'Customer')
          ..add('address', address)
          ..add('idCardImgUrl', idCardImgUrl)
          ..add('customerId', customerId)
          ..add('utilityImgUrl', utilityImgUrl)
          ..add('idDetails', idDetails)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('occupation', occupation))
        .toString();
  }
}

class CustomerBuilder
    implements Builder<Customer, CustomerBuilder>, CustomerPersonalBuilder {
  _$Customer? _$v;

  Address? _address;
  Address? get address => _$this._address;
  set address(covariant Address? address) => _$this._address = address;

  String? _idCardImgUrl;
  String? get idCardImgUrl => _$this._idCardImgUrl;
  set idCardImgUrl(covariant String? idCardImgUrl) =>
      _$this._idCardImgUrl = idCardImgUrl;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(covariant String? customerId) =>
      _$this._customerId = customerId;

  String? _utilityImgUrl;
  String? get utilityImgUrl => _$this._utilityImgUrl;
  set utilityImgUrl(covariant String? utilityImgUrl) =>
      _$this._utilityImgUrl = utilityImgUrl;

  IdDetailsBuilder? _idDetails;
  IdDetailsBuilder get idDetails => _$this._idDetails ??= IdDetailsBuilder();
  set idDetails(covariant IdDetailsBuilder? idDetails) =>
      _$this._idDetails = idDetails;

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

  CustomerBuilder() {
    Customer._defaults(this);
  }

  CustomerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _idCardImgUrl = $v.idCardImgUrl;
      _customerId = $v.customerId;
      _utilityImgUrl = $v.utilityImgUrl;
      _idDetails = $v.idDetails?.toBuilder();
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
  void replace(covariant Customer other) {
    _$v = other as _$Customer;
  }

  @override
  void update(void Function(CustomerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Customer build() => _build();

  _$Customer _build() {
    _$Customer _$result;
    try {
      _$result = _$v ??
          _$Customer._(
            address: address,
            idCardImgUrl: idCardImgUrl,
            customerId: BuiltValueNullFieldError.checkNotNull(
                customerId, r'Customer', 'customerId'),
            utilityImgUrl: utilityImgUrl,
            idDetails: _idDetails?.build(),
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
        _$failedField = 'idDetails';
        _idDetails?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Customer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
