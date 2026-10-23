// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentGenderEnum _$agentGenderEnum_male = const AgentGenderEnum._('male');
const AgentGenderEnum _$agentGenderEnum_female =
    const AgentGenderEnum._('female');

AgentGenderEnum _$agentGenderEnumValueOf(String name) {
  switch (name) {
    case 'male':
      return _$agentGenderEnum_male;
    case 'female':
      return _$agentGenderEnum_female;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentGenderEnum> _$agentGenderEnumValues =
    BuiltSet<AgentGenderEnum>(const <AgentGenderEnum>[
  _$agentGenderEnum_male,
  _$agentGenderEnum_female,
]);

Serializer<AgentGenderEnum> _$agentGenderEnumSerializer =
    _$AgentGenderEnumSerializer();

class _$AgentGenderEnumSerializer
    implements PrimitiveSerializer<AgentGenderEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'male': 'male',
    'female': 'female',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'male': 'male',
    'female': 'female',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentGenderEnum];
  @override
  final String wireName = 'AgentGenderEnum';

  @override
  Object serialize(Serializers serializers, AgentGenderEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentGenderEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentGenderEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Agent extends Agent {
  @override
  final String? agentId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final Date? dateOfBirth;
  @override
  final AgentGenderEnum? gender;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? address;

  factory _$Agent([void Function(AgentBuilder)? updates]) =>
      (AgentBuilder()..update(updates))._build();

  _$Agent._(
      {this.agentId,
      this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.gender,
      this.phone,
      this.email,
      this.address})
      : super._();
  @override
  Agent rebuild(void Function(AgentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentBuilder toBuilder() => AgentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Agent &&
        agentId == other.agentId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender &&
        phone == other.phone &&
        email == other.email &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, agentId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Agent')
          ..add('agentId', agentId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('dateOfBirth', dateOfBirth)
          ..add('gender', gender)
          ..add('phone', phone)
          ..add('email', email)
          ..add('address', address))
        .toString();
  }
}

class AgentBuilder implements Builder<Agent, AgentBuilder> {
  _$Agent? _$v;

  String? _agentId;
  String? get agentId => _$this._agentId;
  set agentId(String? agentId) => _$this._agentId = agentId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  Date? _dateOfBirth;
  Date? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(Date? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  AgentGenderEnum? _gender;
  AgentGenderEnum? get gender => _$this._gender;
  set gender(AgentGenderEnum? gender) => _$this._gender = gender;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  AgentBuilder() {
    Agent._defaults(this);
  }

  AgentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agentId = $v.agentId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _dateOfBirth = $v.dateOfBirth;
      _gender = $v.gender;
      _phone = $v.phone;
      _email = $v.email;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Agent other) {
    _$v = other as _$Agent;
  }

  @override
  void update(void Function(AgentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Agent build() => _build();

  _$Agent _build() {
    final _$result = _$v ??
        _$Agent._(
          agentId: agentId,
          firstName: firstName,
          lastName: lastName,
          dateOfBirth: dateOfBirth,
          gender: gender,
          phone: phone,
          email: email,
          address: address,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
