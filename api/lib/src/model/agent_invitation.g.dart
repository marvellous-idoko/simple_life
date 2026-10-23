// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_invitation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentInvitationPrimaryCompanyEnum
    _$agentInvitationPrimaryCompanyEnum_heirsLifeAssurance =
    const AgentInvitationPrimaryCompanyEnum._('heirsLifeAssurance');
const AgentInvitationPrimaryCompanyEnum
    _$agentInvitationPrimaryCompanyEnum_heirsInsurance =
    const AgentInvitationPrimaryCompanyEnum._('heirsInsurance');

AgentInvitationPrimaryCompanyEnum _$agentInvitationPrimaryCompanyEnumValueOf(
    String name) {
  switch (name) {
    case 'heirsLifeAssurance':
      return _$agentInvitationPrimaryCompanyEnum_heirsLifeAssurance;
    case 'heirsInsurance':
      return _$agentInvitationPrimaryCompanyEnum_heirsInsurance;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentInvitationPrimaryCompanyEnum>
    _$agentInvitationPrimaryCompanyEnumValues = BuiltSet<
        AgentInvitationPrimaryCompanyEnum>(const <AgentInvitationPrimaryCompanyEnum>[
  _$agentInvitationPrimaryCompanyEnum_heirsLifeAssurance,
  _$agentInvitationPrimaryCompanyEnum_heirsInsurance,
]);

const AgentInvitationPositionEnum _$agentInvitationPositionEnum_FA =
    const AgentInvitationPositionEnum._('FA');
const AgentInvitationPositionEnum _$agentInvitationPositionEnum_UM =
    const AgentInvitationPositionEnum._('UM');
const AgentInvitationPositionEnum _$agentInvitationPositionEnum_BRO =
    const AgentInvitationPositionEnum._('BRO');
const AgentInvitationPositionEnum _$agentInvitationPositionEnum_SBRO =
    const AgentInvitationPositionEnum._('SBRO');

AgentInvitationPositionEnum _$agentInvitationPositionEnumValueOf(String name) {
  switch (name) {
    case 'FA':
      return _$agentInvitationPositionEnum_FA;
    case 'UM':
      return _$agentInvitationPositionEnum_UM;
    case 'BRO':
      return _$agentInvitationPositionEnum_BRO;
    case 'SBRO':
      return _$agentInvitationPositionEnum_SBRO;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentInvitationPositionEnum>
    _$agentInvitationPositionEnumValues =
    BuiltSet<AgentInvitationPositionEnum>(const <AgentInvitationPositionEnum>[
  _$agentInvitationPositionEnum_FA,
  _$agentInvitationPositionEnum_UM,
  _$agentInvitationPositionEnum_BRO,
  _$agentInvitationPositionEnum_SBRO,
]);

Serializer<AgentInvitationPrimaryCompanyEnum>
    _$agentInvitationPrimaryCompanyEnumSerializer =
    _$AgentInvitationPrimaryCompanyEnumSerializer();
Serializer<AgentInvitationPositionEnum>
    _$agentInvitationPositionEnumSerializer =
    _$AgentInvitationPositionEnumSerializer();

class _$AgentInvitationPrimaryCompanyEnumSerializer
    implements PrimitiveSerializer<AgentInvitationPrimaryCompanyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'heirsLifeAssurance': 'Heirs Life Assurance',
    'heirsInsurance': 'Heirs Insurance',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Heirs Life Assurance': 'heirsLifeAssurance',
    'Heirs Insurance': 'heirsInsurance',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentInvitationPrimaryCompanyEnum];
  @override
  final String wireName = 'AgentInvitationPrimaryCompanyEnum';

  @override
  Object serialize(
          Serializers serializers, AgentInvitationPrimaryCompanyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentInvitationPrimaryCompanyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentInvitationPrimaryCompanyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentInvitationPositionEnumSerializer
    implements PrimitiveSerializer<AgentInvitationPositionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FA': 'FA',
    'UM': 'UM',
    'BRO': 'BRO',
    'SBRO': 'SBRO',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FA': 'FA',
    'UM': 'UM',
    'BRO': 'BRO',
    'SBRO': 'SBRO',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentInvitationPositionEnum];
  @override
  final String wireName = 'AgentInvitationPositionEnum';

  @override
  Object serialize(Serializers serializers, AgentInvitationPositionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentInvitationPositionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentInvitationPositionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentInvitation extends AgentInvitation {
  @override
  final String? agentSubmissionId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final AgentInvitationPrimaryCompanyEnum? primaryCompany;
  @override
  final String? hilBranch;
  @override
  final String? hlaBranch;
  @override
  final AgentInvitationPositionEnum? position;
  @override
  final num? lineManagerId;

  factory _$AgentInvitation([void Function(AgentInvitationBuilder)? updates]) =>
      (AgentInvitationBuilder()..update(updates))._build();

  _$AgentInvitation._(
      {this.agentSubmissionId,
      this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.primaryCompany,
      this.hilBranch,
      this.hlaBranch,
      this.position,
      this.lineManagerId})
      : super._();
  @override
  AgentInvitation rebuild(void Function(AgentInvitationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentInvitationBuilder toBuilder() => AgentInvitationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentInvitation &&
        agentSubmissionId == other.agentSubmissionId &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        primaryCompany == other.primaryCompany &&
        hilBranch == other.hilBranch &&
        hlaBranch == other.hlaBranch &&
        position == other.position &&
        lineManagerId == other.lineManagerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, agentSubmissionId.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, primaryCompany.hashCode);
    _$hash = $jc(_$hash, hilBranch.hashCode);
    _$hash = $jc(_$hash, hlaBranch.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, lineManagerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentInvitation')
          ..add('agentSubmissionId', agentSubmissionId)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('phone', phone)
          ..add('primaryCompany', primaryCompany)
          ..add('hilBranch', hilBranch)
          ..add('hlaBranch', hlaBranch)
          ..add('position', position)
          ..add('lineManagerId', lineManagerId))
        .toString();
  }
}

class AgentInvitationBuilder
    implements Builder<AgentInvitation, AgentInvitationBuilder> {
  _$AgentInvitation? _$v;

  String? _agentSubmissionId;
  String? get agentSubmissionId => _$this._agentSubmissionId;
  set agentSubmissionId(String? agentSubmissionId) =>
      _$this._agentSubmissionId = agentSubmissionId;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  AgentInvitationPrimaryCompanyEnum? _primaryCompany;
  AgentInvitationPrimaryCompanyEnum? get primaryCompany =>
      _$this._primaryCompany;
  set primaryCompany(AgentInvitationPrimaryCompanyEnum? primaryCompany) =>
      _$this._primaryCompany = primaryCompany;

  String? _hilBranch;
  String? get hilBranch => _$this._hilBranch;
  set hilBranch(String? hilBranch) => _$this._hilBranch = hilBranch;

  String? _hlaBranch;
  String? get hlaBranch => _$this._hlaBranch;
  set hlaBranch(String? hlaBranch) => _$this._hlaBranch = hlaBranch;

  AgentInvitationPositionEnum? _position;
  AgentInvitationPositionEnum? get position => _$this._position;
  set position(AgentInvitationPositionEnum? position) =>
      _$this._position = position;

  num? _lineManagerId;
  num? get lineManagerId => _$this._lineManagerId;
  set lineManagerId(num? lineManagerId) =>
      _$this._lineManagerId = lineManagerId;

  AgentInvitationBuilder() {
    AgentInvitation._defaults(this);
  }

  AgentInvitationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agentSubmissionId = $v.agentSubmissionId;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _phone = $v.phone;
      _primaryCompany = $v.primaryCompany;
      _hilBranch = $v.hilBranch;
      _hlaBranch = $v.hlaBranch;
      _position = $v.position;
      _lineManagerId = $v.lineManagerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentInvitation other) {
    _$v = other as _$AgentInvitation;
  }

  @override
  void update(void Function(AgentInvitationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentInvitation build() => _build();

  _$AgentInvitation _build() {
    final _$result = _$v ??
        _$AgentInvitation._(
          agentSubmissionId: agentSubmissionId,
          firstName: firstName,
          lastName: lastName,
          email: email,
          phone: phone,
          primaryCompany: primaryCompany,
          hilBranch: hilBranch,
          hlaBranch: hlaBranch,
          position: position,
          lineManagerId: lineManagerId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
