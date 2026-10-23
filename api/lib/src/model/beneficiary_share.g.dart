// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary_share.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BeneficiaryShare extends BeneficiaryShare {
  @override
  final String? beneficiaryId;
  @override
  final String? personId;
  @override
  final num? share;

  factory _$BeneficiaryShare(
          [void Function(BeneficiaryShareBuilder)? updates]) =>
      (BeneficiaryShareBuilder()..update(updates))._build();

  _$BeneficiaryShare._({this.beneficiaryId, this.personId, this.share})
      : super._();
  @override
  BeneficiaryShare rebuild(void Function(BeneficiaryShareBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeneficiaryShareBuilder toBuilder() =>
      BeneficiaryShareBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BeneficiaryShare &&
        beneficiaryId == other.beneficiaryId &&
        personId == other.personId &&
        share == other.share;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, beneficiaryId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, share.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BeneficiaryShare')
          ..add('beneficiaryId', beneficiaryId)
          ..add('personId', personId)
          ..add('share', share))
        .toString();
  }
}

class BeneficiaryShareBuilder
    implements Builder<BeneficiaryShare, BeneficiaryShareBuilder> {
  _$BeneficiaryShare? _$v;

  String? _beneficiaryId;
  String? get beneficiaryId => _$this._beneficiaryId;
  set beneficiaryId(String? beneficiaryId) =>
      _$this._beneficiaryId = beneficiaryId;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(String? personId) => _$this._personId = personId;

  num? _share;
  num? get share => _$this._share;
  set share(num? share) => _$this._share = share;

  BeneficiaryShareBuilder() {
    BeneficiaryShare._defaults(this);
  }

  BeneficiaryShareBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _beneficiaryId = $v.beneficiaryId;
      _personId = $v.personId;
      _share = $v.share;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BeneficiaryShare other) {
    _$v = other as _$BeneficiaryShare;
  }

  @override
  void update(void Function(BeneficiaryShareBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BeneficiaryShare build() => _build();

  _$BeneficiaryShare _build() {
    final _$result = _$v ??
        _$BeneficiaryShare._(
          beneficiaryId: beneficiaryId,
          personId: personId,
          share: share,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
