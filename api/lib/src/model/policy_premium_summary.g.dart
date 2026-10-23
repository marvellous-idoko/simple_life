// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_premium_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PolicyPremiumSummary extends PolicyPremiumSummary {
  @override
  final num? interest;
  @override
  final num? paidUpDays;
  @override
  final num? expectedPaidInstallments;
  @override
  final num? protectionPremiumDue;
  @override
  final num? totalPremium;
  @override
  final num? netPremium;
  @override
  final num? policyDuration;

  factory _$PolicyPremiumSummary(
          [void Function(PolicyPremiumSummaryBuilder)? updates]) =>
      (PolicyPremiumSummaryBuilder()..update(updates))._build();

  _$PolicyPremiumSummary._(
      {this.interest,
      this.paidUpDays,
      this.expectedPaidInstallments,
      this.protectionPremiumDue,
      this.totalPremium,
      this.netPremium,
      this.policyDuration})
      : super._();
  @override
  PolicyPremiumSummary rebuild(
          void Function(PolicyPremiumSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PolicyPremiumSummaryBuilder toBuilder() =>
      PolicyPremiumSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PolicyPremiumSummary &&
        interest == other.interest &&
        paidUpDays == other.paidUpDays &&
        expectedPaidInstallments == other.expectedPaidInstallments &&
        protectionPremiumDue == other.protectionPremiumDue &&
        totalPremium == other.totalPremium &&
        netPremium == other.netPremium &&
        policyDuration == other.policyDuration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, interest.hashCode);
    _$hash = $jc(_$hash, paidUpDays.hashCode);
    _$hash = $jc(_$hash, expectedPaidInstallments.hashCode);
    _$hash = $jc(_$hash, protectionPremiumDue.hashCode);
    _$hash = $jc(_$hash, totalPremium.hashCode);
    _$hash = $jc(_$hash, netPremium.hashCode);
    _$hash = $jc(_$hash, policyDuration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PolicyPremiumSummary')
          ..add('interest', interest)
          ..add('paidUpDays', paidUpDays)
          ..add('expectedPaidInstallments', expectedPaidInstallments)
          ..add('protectionPremiumDue', protectionPremiumDue)
          ..add('totalPremium', totalPremium)
          ..add('netPremium', netPremium)
          ..add('policyDuration', policyDuration))
        .toString();
  }
}

class PolicyPremiumSummaryBuilder
    implements Builder<PolicyPremiumSummary, PolicyPremiumSummaryBuilder> {
  _$PolicyPremiumSummary? _$v;

  num? _interest;
  num? get interest => _$this._interest;
  set interest(num? interest) => _$this._interest = interest;

  num? _paidUpDays;
  num? get paidUpDays => _$this._paidUpDays;
  set paidUpDays(num? paidUpDays) => _$this._paidUpDays = paidUpDays;

  num? _expectedPaidInstallments;
  num? get expectedPaidInstallments => _$this._expectedPaidInstallments;
  set expectedPaidInstallments(num? expectedPaidInstallments) =>
      _$this._expectedPaidInstallments = expectedPaidInstallments;

  num? _protectionPremiumDue;
  num? get protectionPremiumDue => _$this._protectionPremiumDue;
  set protectionPremiumDue(num? protectionPremiumDue) =>
      _$this._protectionPremiumDue = protectionPremiumDue;

  num? _totalPremium;
  num? get totalPremium => _$this._totalPremium;
  set totalPremium(num? totalPremium) => _$this._totalPremium = totalPremium;

  num? _netPremium;
  num? get netPremium => _$this._netPremium;
  set netPremium(num? netPremium) => _$this._netPremium = netPremium;

  num? _policyDuration;
  num? get policyDuration => _$this._policyDuration;
  set policyDuration(num? policyDuration) =>
      _$this._policyDuration = policyDuration;

  PolicyPremiumSummaryBuilder() {
    PolicyPremiumSummary._defaults(this);
  }

  PolicyPremiumSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interest = $v.interest;
      _paidUpDays = $v.paidUpDays;
      _expectedPaidInstallments = $v.expectedPaidInstallments;
      _protectionPremiumDue = $v.protectionPremiumDue;
      _totalPremium = $v.totalPremium;
      _netPremium = $v.netPremium;
      _policyDuration = $v.policyDuration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PolicyPremiumSummary other) {
    _$v = other as _$PolicyPremiumSummary;
  }

  @override
  void update(void Function(PolicyPremiumSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PolicyPremiumSummary build() => _build();

  _$PolicyPremiumSummary _build() {
    final _$result = _$v ??
        _$PolicyPremiumSummary._(
          interest: interest,
          paidUpDays: paidUpDays,
          expectedPaidInstallments: expectedPaidInstallments,
          protectionPremiumDue: protectionPremiumDue,
          totalPremium: totalPremium,
          netPremium: netPremium,
          policyDuration: policyDuration,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
