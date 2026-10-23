// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClaimInfo extends ClaimInfo {
  @override
  final String? id;
  @override
  final String? claimName;
  @override
  final String? claimStatus;
  @override
  final String? registrationDate;
  @override
  final String? description;
  @override
  final String? claimNumber;
  @override
  final String? company;

  factory _$ClaimInfo([void Function(ClaimInfoBuilder)? updates]) =>
      (ClaimInfoBuilder()..update(updates))._build();

  _$ClaimInfo._(
      {this.id,
      this.claimName,
      this.claimStatus,
      this.registrationDate,
      this.description,
      this.claimNumber,
      this.company})
      : super._();
  @override
  ClaimInfo rebuild(void Function(ClaimInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClaimInfoBuilder toBuilder() => ClaimInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClaimInfo &&
        id == other.id &&
        claimName == other.claimName &&
        claimStatus == other.claimStatus &&
        registrationDate == other.registrationDate &&
        description == other.description &&
        claimNumber == other.claimNumber &&
        company == other.company;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, claimName.hashCode);
    _$hash = $jc(_$hash, claimStatus.hashCode);
    _$hash = $jc(_$hash, registrationDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, claimNumber.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClaimInfo')
          ..add('id', id)
          ..add('claimName', claimName)
          ..add('claimStatus', claimStatus)
          ..add('registrationDate', registrationDate)
          ..add('description', description)
          ..add('claimNumber', claimNumber)
          ..add('company', company))
        .toString();
  }
}

class ClaimInfoBuilder implements Builder<ClaimInfo, ClaimInfoBuilder> {
  _$ClaimInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _claimName;
  String? get claimName => _$this._claimName;
  set claimName(String? claimName) => _$this._claimName = claimName;

  String? _claimStatus;
  String? get claimStatus => _$this._claimStatus;
  set claimStatus(String? claimStatus) => _$this._claimStatus = claimStatus;

  String? _registrationDate;
  String? get registrationDate => _$this._registrationDate;
  set registrationDate(String? registrationDate) =>
      _$this._registrationDate = registrationDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _claimNumber;
  String? get claimNumber => _$this._claimNumber;
  set claimNumber(String? claimNumber) => _$this._claimNumber = claimNumber;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  ClaimInfoBuilder() {
    ClaimInfo._defaults(this);
  }

  ClaimInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _claimName = $v.claimName;
      _claimStatus = $v.claimStatus;
      _registrationDate = $v.registrationDate;
      _description = $v.description;
      _claimNumber = $v.claimNumber;
      _company = $v.company;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClaimInfo other) {
    _$v = other as _$ClaimInfo;
  }

  @override
  void update(void Function(ClaimInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClaimInfo build() => _build();

  _$ClaimInfo _build() {
    final _$result = _$v ??
        _$ClaimInfo._(
          id: id,
          claimName: claimName,
          claimStatus: claimStatus,
          registrationDate: registrationDate,
          description: description,
          claimNumber: claimNumber,
          company: company,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
