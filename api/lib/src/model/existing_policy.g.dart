// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existing_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExistingPolicy extends ExistingPolicy {
  @override
  final String? company;
  @override
  final num? sumAssured;
  @override
  final String? policyNumber;

  factory _$ExistingPolicy([void Function(ExistingPolicyBuilder)? updates]) =>
      (ExistingPolicyBuilder()..update(updates))._build();

  _$ExistingPolicy._({this.company, this.sumAssured, this.policyNumber})
      : super._();
  @override
  ExistingPolicy rebuild(void Function(ExistingPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExistingPolicyBuilder toBuilder() => ExistingPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExistingPolicy &&
        company == other.company &&
        sumAssured == other.sumAssured &&
        policyNumber == other.policyNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, sumAssured.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExistingPolicy')
          ..add('company', company)
          ..add('sumAssured', sumAssured)
          ..add('policyNumber', policyNumber))
        .toString();
  }
}

class ExistingPolicyBuilder
    implements Builder<ExistingPolicy, ExistingPolicyBuilder> {
  _$ExistingPolicy? _$v;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  num? _sumAssured;
  num? get sumAssured => _$this._sumAssured;
  set sumAssured(num? sumAssured) => _$this._sumAssured = sumAssured;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  ExistingPolicyBuilder() {
    ExistingPolicy._defaults(this);
  }

  ExistingPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _company = $v.company;
      _sumAssured = $v.sumAssured;
      _policyNumber = $v.policyNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExistingPolicy other) {
    _$v = other as _$ExistingPolicy;
  }

  @override
  void update(void Function(ExistingPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExistingPolicy build() => _build();

  _$ExistingPolicy _build() {
    final _$result = _$v ??
        _$ExistingPolicy._(
          company: company,
          sumAssured: sumAssured,
          policyNumber: policyNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
