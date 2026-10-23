// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_notice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimNotice extends ClaimNotice {
  @override
  final String? claimId;
  @override
  final String? description;
  @override
  final String? location;
  @override
  final num? causeOfLoss;
  @override
  final String? causeOfLossValue;
  @override
  final num? resultOfLoss;
  @override
  final String? resultOfLossValue;
  @override
  final String? policyNumber;
  @override
  final String? policyName;
  @override
  final Date? dateOfIncident;

  factory _$ClaimNotice([void Function(ClaimNoticeBuilder)? updates]) =>
      (ClaimNoticeBuilder()..update(updates))._build();

  _$ClaimNotice._(
      {this.claimId,
      this.description,
      this.location,
      this.causeOfLoss,
      this.causeOfLossValue,
      this.resultOfLoss,
      this.resultOfLossValue,
      this.policyNumber,
      this.policyName,
      this.dateOfIncident})
      : super._();
  @override
  ClaimNotice rebuild(void Function(ClaimNoticeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimNoticeBuilder toBuilder() => ClaimNoticeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimNotice &&
        claimId == other.claimId &&
        description == other.description &&
        location == other.location &&
        causeOfLoss == other.causeOfLoss &&
        causeOfLossValue == other.causeOfLossValue &&
        resultOfLoss == other.resultOfLoss &&
        resultOfLossValue == other.resultOfLossValue &&
        policyNumber == other.policyNumber &&
        policyName == other.policyName &&
        dateOfIncident == other.dateOfIncident;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, claimId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, causeOfLoss.hashCode);
    _$hash = $jc(_$hash, causeOfLossValue.hashCode);
    _$hash = $jc(_$hash, resultOfLoss.hashCode);
    _$hash = $jc(_$hash, resultOfLossValue.hashCode);
    _$hash = $jc(_$hash, policyNumber.hashCode);
    _$hash = $jc(_$hash, policyName.hashCode);
    _$hash = $jc(_$hash, dateOfIncident.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimNotice')
          ..add('claimId', claimId)
          ..add('description', description)
          ..add('location', location)
          ..add('causeOfLoss', causeOfLoss)
          ..add('causeOfLossValue', causeOfLossValue)
          ..add('resultOfLoss', resultOfLoss)
          ..add('resultOfLossValue', resultOfLossValue)
          ..add('policyNumber', policyNumber)
          ..add('policyName', policyName)
          ..add('dateOfIncident', dateOfIncident))
        .toString();
  }
}

class ClaimNoticeBuilder implements Builder<ClaimNotice, ClaimNoticeBuilder> {
  _$ClaimNotice? _$v;

  String? _claimId;
  String? get claimId => _$this._claimId;
  set claimId(String? claimId) => _$this._claimId = claimId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  num? _causeOfLoss;
  num? get causeOfLoss => _$this._causeOfLoss;
  set causeOfLoss(num? causeOfLoss) => _$this._causeOfLoss = causeOfLoss;

  String? _causeOfLossValue;
  String? get causeOfLossValue => _$this._causeOfLossValue;
  set causeOfLossValue(String? causeOfLossValue) =>
      _$this._causeOfLossValue = causeOfLossValue;

  num? _resultOfLoss;
  num? get resultOfLoss => _$this._resultOfLoss;
  set resultOfLoss(num? resultOfLoss) => _$this._resultOfLoss = resultOfLoss;

  String? _resultOfLossValue;
  String? get resultOfLossValue => _$this._resultOfLossValue;
  set resultOfLossValue(String? resultOfLossValue) =>
      _$this._resultOfLossValue = resultOfLossValue;

  String? _policyNumber;
  String? get policyNumber => _$this._policyNumber;
  set policyNumber(String? policyNumber) => _$this._policyNumber = policyNumber;

  String? _policyName;
  String? get policyName => _$this._policyName;
  set policyName(String? policyName) => _$this._policyName = policyName;

  Date? _dateOfIncident;
  Date? get dateOfIncident => _$this._dateOfIncident;
  set dateOfIncident(Date? dateOfIncident) =>
      _$this._dateOfIncident = dateOfIncident;

  ClaimNoticeBuilder() {
    ClaimNotice._defaults(this);
  }

  ClaimNoticeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claimId = $v.claimId;
      _description = $v.description;
      _location = $v.location;
      _causeOfLoss = $v.causeOfLoss;
      _causeOfLossValue = $v.causeOfLossValue;
      _resultOfLoss = $v.resultOfLoss;
      _resultOfLossValue = $v.resultOfLossValue;
      _policyNumber = $v.policyNumber;
      _policyName = $v.policyName;
      _dateOfIncident = $v.dateOfIncident;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimNotice other) {
    _$v = other as _$ClaimNotice;
  }

  @override
  void update(void Function(ClaimNoticeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimNotice build() => _build();

  _$ClaimNotice _build() {
    final _$result = _$v ??
        _$ClaimNotice._(
          claimId: claimId,
          description: description,
          location: location,
          causeOfLoss: causeOfLoss,
          causeOfLossValue: causeOfLossValue,
          resultOfLoss: resultOfLoss,
          resultOfLossValue: resultOfLossValue,
          policyNumber: policyNumber,
          policyName: policyName,
          dateOfIncident: dateOfIncident,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
