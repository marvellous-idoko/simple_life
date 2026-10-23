// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_license.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentLicenseInsuranceAgencyEnum
    _$agentLicenseInsuranceAgencyEnum_partTime =
    const AgentLicenseInsuranceAgencyEnum._('partTime');
const AgentLicenseInsuranceAgencyEnum
    _$agentLicenseInsuranceAgencyEnum_fullTime =
    const AgentLicenseInsuranceAgencyEnum._('fullTime');

AgentLicenseInsuranceAgencyEnum _$agentLicenseInsuranceAgencyEnumValueOf(
    String name) {
  switch (name) {
    case 'partTime':
      return _$agentLicenseInsuranceAgencyEnum_partTime;
    case 'fullTime':
      return _$agentLicenseInsuranceAgencyEnum_fullTime;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AgentLicenseInsuranceAgencyEnum>
    _$agentLicenseInsuranceAgencyEnumValues = BuiltSet<
        AgentLicenseInsuranceAgencyEnum>(const <AgentLicenseInsuranceAgencyEnum>[
  _$agentLicenseInsuranceAgencyEnum_partTime,
  _$agentLicenseInsuranceAgencyEnum_fullTime,
]);

Serializer<AgentLicenseInsuranceAgencyEnum>
    _$agentLicenseInsuranceAgencyEnumSerializer =
    _$AgentLicenseInsuranceAgencyEnumSerializer();

class _$AgentLicenseInsuranceAgencyEnumSerializer
    implements PrimitiveSerializer<AgentLicenseInsuranceAgencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'partTime': 'part-time',
    'fullTime': 'full-time',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'part-time': 'partTime',
    'full-time': 'fullTime',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentLicenseInsuranceAgencyEnum];
  @override
  final String wireName = 'AgentLicenseInsuranceAgencyEnum';

  @override
  Object serialize(
          Serializers serializers, AgentLicenseInsuranceAgencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AgentLicenseInsuranceAgencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AgentLicenseInsuranceAgencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AgentLicense extends AgentLicense {
  @override
  final String? licenseNumber;
  @override
  final AgentLicenseInsuranceAgencyEnum? insuranceAgency;
  @override
  final String? ciinRegNumber;
  @override
  final String? arianRegNumber;
  @override
  final String? issueDate;
  @override
  final String? expiryDate;
  @override
  final num? bvn;
  @override
  final String? accountHolder;

  factory _$AgentLicense([void Function(AgentLicenseBuilder)? updates]) =>
      (AgentLicenseBuilder()..update(updates))._build();

  _$AgentLicense._(
      {this.licenseNumber,
      this.insuranceAgency,
      this.ciinRegNumber,
      this.arianRegNumber,
      this.issueDate,
      this.expiryDate,
      this.bvn,
      this.accountHolder})
      : super._();
  @override
  AgentLicense rebuild(void Function(AgentLicenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentLicenseBuilder toBuilder() => AgentLicenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentLicense &&
        licenseNumber == other.licenseNumber &&
        insuranceAgency == other.insuranceAgency &&
        ciinRegNumber == other.ciinRegNumber &&
        arianRegNumber == other.arianRegNumber &&
        issueDate == other.issueDate &&
        expiryDate == other.expiryDate &&
        bvn == other.bvn &&
        accountHolder == other.accountHolder;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, licenseNumber.hashCode);
    _$hash = $jc(_$hash, insuranceAgency.hashCode);
    _$hash = $jc(_$hash, ciinRegNumber.hashCode);
    _$hash = $jc(_$hash, arianRegNumber.hashCode);
    _$hash = $jc(_$hash, issueDate.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, bvn.hashCode);
    _$hash = $jc(_$hash, accountHolder.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentLicense')
          ..add('licenseNumber', licenseNumber)
          ..add('insuranceAgency', insuranceAgency)
          ..add('ciinRegNumber', ciinRegNumber)
          ..add('arianRegNumber', arianRegNumber)
          ..add('issueDate', issueDate)
          ..add('expiryDate', expiryDate)
          ..add('bvn', bvn)
          ..add('accountHolder', accountHolder))
        .toString();
  }
}

class AgentLicenseBuilder
    implements Builder<AgentLicense, AgentLicenseBuilder> {
  _$AgentLicense? _$v;

  String? _licenseNumber;
  String? get licenseNumber => _$this._licenseNumber;
  set licenseNumber(String? licenseNumber) =>
      _$this._licenseNumber = licenseNumber;

  AgentLicenseInsuranceAgencyEnum? _insuranceAgency;
  AgentLicenseInsuranceAgencyEnum? get insuranceAgency =>
      _$this._insuranceAgency;
  set insuranceAgency(AgentLicenseInsuranceAgencyEnum? insuranceAgency) =>
      _$this._insuranceAgency = insuranceAgency;

  String? _ciinRegNumber;
  String? get ciinRegNumber => _$this._ciinRegNumber;
  set ciinRegNumber(String? ciinRegNumber) =>
      _$this._ciinRegNumber = ciinRegNumber;

  String? _arianRegNumber;
  String? get arianRegNumber => _$this._arianRegNumber;
  set arianRegNumber(String? arianRegNumber) =>
      _$this._arianRegNumber = arianRegNumber;

  String? _issueDate;
  String? get issueDate => _$this._issueDate;
  set issueDate(String? issueDate) => _$this._issueDate = issueDate;

  String? _expiryDate;
  String? get expiryDate => _$this._expiryDate;
  set expiryDate(String? expiryDate) => _$this._expiryDate = expiryDate;

  num? _bvn;
  num? get bvn => _$this._bvn;
  set bvn(num? bvn) => _$this._bvn = bvn;

  String? _accountHolder;
  String? get accountHolder => _$this._accountHolder;
  set accountHolder(String? accountHolder) =>
      _$this._accountHolder = accountHolder;

  AgentLicenseBuilder() {
    AgentLicense._defaults(this);
  }

  AgentLicenseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _licenseNumber = $v.licenseNumber;
      _insuranceAgency = $v.insuranceAgency;
      _ciinRegNumber = $v.ciinRegNumber;
      _arianRegNumber = $v.arianRegNumber;
      _issueDate = $v.issueDate;
      _expiryDate = $v.expiryDate;
      _bvn = $v.bvn;
      _accountHolder = $v.accountHolder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentLicense other) {
    _$v = other as _$AgentLicense;
  }

  @override
  void update(void Function(AgentLicenseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentLicense build() => _build();

  _$AgentLicense _build() {
    final _$result = _$v ??
        _$AgentLicense._(
          licenseNumber: licenseNumber,
          insuranceAgency: insuranceAgency,
          ciinRegNumber: ciinRegNumber,
          arianRegNumber: arianRegNumber,
          issueDate: issueDate,
          expiryDate: expiryDate,
          bvn: bvn,
          accountHolder: accountHolder,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
