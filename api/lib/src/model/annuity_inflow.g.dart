// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annuity_inflow.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnuityInflow extends AnnuityInflow {
  @override
  final num? annuityPremium;
  @override
  final String? rsaPin;
  @override
  final String? date;
  @override
  final String? beneficiary;
  @override
  final String? employerName;
  @override
  final String? pfaName;
  @override
  final String? inflowId;

  factory _$AnnuityInflow([void Function(AnnuityInflowBuilder)? updates]) =>
      (AnnuityInflowBuilder()..update(updates))._build();

  _$AnnuityInflow._(
      {this.annuityPremium,
      this.rsaPin,
      this.date,
      this.beneficiary,
      this.employerName,
      this.pfaName,
      this.inflowId})
      : super._();
  @override
  AnnuityInflow rebuild(void Function(AnnuityInflowBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnuityInflowBuilder toBuilder() => AnnuityInflowBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnuityInflow &&
        annuityPremium == other.annuityPremium &&
        rsaPin == other.rsaPin &&
        date == other.date &&
        beneficiary == other.beneficiary &&
        employerName == other.employerName &&
        pfaName == other.pfaName &&
        inflowId == other.inflowId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, annuityPremium.hashCode);
    _$hash = $jc(_$hash, rsaPin.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, beneficiary.hashCode);
    _$hash = $jc(_$hash, employerName.hashCode);
    _$hash = $jc(_$hash, pfaName.hashCode);
    _$hash = $jc(_$hash, inflowId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnuityInflow')
          ..add('annuityPremium', annuityPremium)
          ..add('rsaPin', rsaPin)
          ..add('date', date)
          ..add('beneficiary', beneficiary)
          ..add('employerName', employerName)
          ..add('pfaName', pfaName)
          ..add('inflowId', inflowId))
        .toString();
  }
}

class AnnuityInflowBuilder
    implements Builder<AnnuityInflow, AnnuityInflowBuilder> {
  _$AnnuityInflow? _$v;

  num? _annuityPremium;
  num? get annuityPremium => _$this._annuityPremium;
  set annuityPremium(num? annuityPremium) =>
      _$this._annuityPremium = annuityPremium;

  String? _rsaPin;
  String? get rsaPin => _$this._rsaPin;
  set rsaPin(String? rsaPin) => _$this._rsaPin = rsaPin;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _beneficiary;
  String? get beneficiary => _$this._beneficiary;
  set beneficiary(String? beneficiary) => _$this._beneficiary = beneficiary;

  String? _employerName;
  String? get employerName => _$this._employerName;
  set employerName(String? employerName) => _$this._employerName = employerName;

  String? _pfaName;
  String? get pfaName => _$this._pfaName;
  set pfaName(String? pfaName) => _$this._pfaName = pfaName;

  String? _inflowId;
  String? get inflowId => _$this._inflowId;
  set inflowId(String? inflowId) => _$this._inflowId = inflowId;

  AnnuityInflowBuilder() {
    AnnuityInflow._defaults(this);
  }

  AnnuityInflowBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annuityPremium = $v.annuityPremium;
      _rsaPin = $v.rsaPin;
      _date = $v.date;
      _beneficiary = $v.beneficiary;
      _employerName = $v.employerName;
      _pfaName = $v.pfaName;
      _inflowId = $v.inflowId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnuityInflow other) {
    _$v = other as _$AnnuityInflow;
  }

  @override
  void update(void Function(AnnuityInflowBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnuityInflow build() => _build();

  _$AnnuityInflow _build() {
    final _$result = _$v ??
        _$AnnuityInflow._(
          annuityPremium: annuityPremium,
          rsaPin: rsaPin,
          date: date,
          beneficiary: beneficiary,
          employerName: employerName,
          pfaName: pfaName,
          inflowId: inflowId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
