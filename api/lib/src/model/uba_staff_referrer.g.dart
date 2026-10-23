// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uba_staff_referrer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UBAStaffReferrer extends UBAStaffReferrer {
  @override
  final String? ubaStaffReferrerId;
  @override
  final String? referrerName;
  @override
  final String? referrerAccountNumber;

  factory _$UBAStaffReferrer(
          [void Function(UBAStaffReferrerBuilder)? updates]) =>
      (UBAStaffReferrerBuilder()..update(updates))._build();

  _$UBAStaffReferrer._(
      {this.ubaStaffReferrerId, this.referrerName, this.referrerAccountNumber})
      : super._();
  @override
  UBAStaffReferrer rebuild(void Function(UBAStaffReferrerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UBAStaffReferrerBuilder toBuilder() =>
      UBAStaffReferrerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UBAStaffReferrer &&
        ubaStaffReferrerId == other.ubaStaffReferrerId &&
        referrerName == other.referrerName &&
        referrerAccountNumber == other.referrerAccountNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ubaStaffReferrerId.hashCode);
    _$hash = $jc(_$hash, referrerName.hashCode);
    _$hash = $jc(_$hash, referrerAccountNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UBAStaffReferrer')
          ..add('ubaStaffReferrerId', ubaStaffReferrerId)
          ..add('referrerName', referrerName)
          ..add('referrerAccountNumber', referrerAccountNumber))
        .toString();
  }
}

class UBAStaffReferrerBuilder
    implements Builder<UBAStaffReferrer, UBAStaffReferrerBuilder> {
  _$UBAStaffReferrer? _$v;

  String? _ubaStaffReferrerId;
  String? get ubaStaffReferrerId => _$this._ubaStaffReferrerId;
  set ubaStaffReferrerId(String? ubaStaffReferrerId) =>
      _$this._ubaStaffReferrerId = ubaStaffReferrerId;

  String? _referrerName;
  String? get referrerName => _$this._referrerName;
  set referrerName(String? referrerName) => _$this._referrerName = referrerName;

  String? _referrerAccountNumber;
  String? get referrerAccountNumber => _$this._referrerAccountNumber;
  set referrerAccountNumber(String? referrerAccountNumber) =>
      _$this._referrerAccountNumber = referrerAccountNumber;

  UBAStaffReferrerBuilder() {
    UBAStaffReferrer._defaults(this);
  }

  UBAStaffReferrerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ubaStaffReferrerId = $v.ubaStaffReferrerId;
      _referrerName = $v.referrerName;
      _referrerAccountNumber = $v.referrerAccountNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UBAStaffReferrer other) {
    _$v = other as _$UBAStaffReferrer;
  }

  @override
  void update(void Function(UBAStaffReferrerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UBAStaffReferrer build() => _build();

  _$UBAStaffReferrer _build() {
    final _$result = _$v ??
        _$UBAStaffReferrer._(
          ubaStaffReferrerId: ubaStaffReferrerId,
          referrerName: referrerName,
          referrerAccountNumber: referrerAccountNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
