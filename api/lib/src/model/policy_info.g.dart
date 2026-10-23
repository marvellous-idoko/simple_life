// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyInfo extends PolicyInfo {
  @override
  final num? id;
  @override
  final String? policyName;
  @override
  final String? policyStatus;
  @override
  final String? policyHolder;
  @override
  final String? policyStartDate;
  @override
  final String? policyExpiryDate;
  @override
  final String? policyNumber;
  @override
  final String? paymentCycle;
  @override
  final String? premium;
  @override
  final String? issueDate;
  @override
  final String? duration;
  @override
  final String? company;
  @override
  final String? underwritingUrl;
  @override
  final num? exchangeRate;

  factory _$PolicyInfo([void Function(PolicyInfoBuilder)? updates]) =>
      (PolicyInfoBuilder()..update(updates))._build();

  _$PolicyInfo._(
      {this.id,
      this.policyName,
      this.policyStatus,
      this.policyHolder,
      this.policyStartDate,
      this.policyExpiryDate,
      this.policyNumber,
      this.paymentCycle,
      this.premium,
      this.issueDate,
      this.duration,
      this.company,
      this.underwritingUrl,
      this.exchangeRate})
      : super._();
  @override
  PolicyInfo rebuild(void Function(PolicyInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyInfoBuilder toBuilder() => PolicyInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyInfo &&
        id == other.id &&
        policyName == other.policyName &&
        policyStatus == other.policyStatus &&
        policyHolder == other.policyHolder &&
        policyStartDate == other.policyStartDate &&
        policyExpiryDate == other.policyExpiryDate &&
        policyNumber == other.policyNumber &&
        paymentCycle == other.paymentCycle &&
        premium == other.premium &&
        issueDate == other.issueDate &&
        duration == other.duration &&
        company == other.company &&
        underwritingUrl == other.underwritingUrl &&
        exchangeRate == other.exchangeRate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, policyStatus.hashCode);
    _$hash = $jc(_$hash, policyHolder.hashCode);
    _$hash = $jc(_$hash, policyStartDate.hashCode);
    _$hash = $jc(_$hash, policyExpiryDate.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, paymentCycle.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, issueDate.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, underwritingUrl.hashCode);
    _$hash = $jc(_$hash, exchangeRate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolicyInfo')
          ..add('id', id)
          ..add('policyName', policyName)
          ..add('policyStatus', policyStatus)
          ..add('policyHolder', policyHolder)
          ..add('policyStartDate', policyStartDate)
          ..add('policyExpiryDate', policyExpiryDate)
          ..add('policyNumber', policyNumber)
          ..add('paymentCycle', paymentCycle)
          ..add('premium', premium)
          ..add('issueDate', issueDate)
          ..add('duration', duration)
          ..add('company', company)
          ..add('underwritingUrl', underwritingUrl)
          ..add('exchangeRate', exchangeRate))
        .toString();
  }
}

class PolicyInfoBuilder implements Builder<PolicyInfo, PolicyInfoBuilder> {
  _$PolicyInfo? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  String? _policyStatus;
  String? get policyStatus => _$this._policyStatus;
  set policyStatus(String? policyStatus) => _$this._policyStatus = policyStatus;

  String? _policyHolder;
  String? get policyHolder => _$this._policyHolder;
  set policyHolder(String? policyHolder) => _$this._policyHolder = policyHolder;

  String? _policyStartDate;
  String? get policyStartDate => _$this._policyStartDate;
  set policyStartDate(String? policyStartDate) =>
      _$this._policyStartDate = policyStartDate;

  String? _policyExpiryDate;
  String? get policyExpiryDate => _$this._policyExpiryDate;
  set policyExpiryDate(String? policyExpiryDate) =>
      _$this._policyExpiryDate = policyExpiryDate;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _paymentCycle;
  String? get paymentCycle => _$this._paymentCycle;
  set paymentCycle(String? paymentCycle) => _$this._paymentCycle = paymentCycle;

  String? _premium;
  String? get premium => _$this._premium;
  set premium(String? premium) => _$this._premium = premium;

  String? _issueDate;
  String? get issueDate => _$this._issueDate;
  set issueDate(String? issueDate) => _$this._issueDate = issueDate;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  String? _underwritingUrl;
  String? get underwritingUrl => _$this._underwritingUrl;
  set underwritingUrl(String? underwritingUrl) =>
      _$this._underwritingUrl = underwritingUrl;

  num? _exchangeRate;
  num? get exchangeRate => _$this._exchangeRate;
  set exchangeRate(num? exchangeRate) => _$this._exchangeRate = exchangeRate;

  PolicyInfoBuilder() {
    PolicyInfo._defaults(this);
  }

  PolicyInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _policyName = $v.policyName;
      _policyStatus = $v.policyStatus;
      _policyHolder = $v.policyHolder;
      _policyStartDate = $v.policyStartDate;
      _policyExpiryDate = $v.policyExpiryDate;
      _policyNumber = $v.policyNumber;
      _paymentCycle = $v.paymentCycle;
      _premium = $v.premium;
      _issueDate = $v.issueDate;
      _duration = $v.duration;
      _company = $v.company;
      _underwritingUrl = $v.underwritingUrl;
      _exchangeRate = $v.exchangeRate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyInfo other) {
    _$v = other as _$PolicyInfo;
  }

  @override
  void update(void Function(PolicyInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyInfo build() => _build();

  _$PolicyInfo _build() {
    final _$result = _$v ??
        _$PolicyInfo._(
          id: id,
          policyName: policyName,
          policyStatus: policyStatus,
          policyHolder: policyHolder,
          policyStartDate: policyStartDate,
          policyExpiryDate: policyExpiryDate,
          policyNumber: policyNumber,
          paymentCycle: paymentCycle,
          premium: premium,
          issueDate: issueDate,
          duration: duration,
          company: company,
          underwritingUrl: underwritingUrl,
          exchangeRate: exchangeRate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
