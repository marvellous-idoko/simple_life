// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'own_damage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OwnDamage extends OwnDamage {
  @override
  final String? damageId;
  @override
  final num? repairEstimate;

  factory _$OwnDamage([void Function(OwnDamageBuilder)? updates]) =>
      (OwnDamageBuilder()..update(updates))._build();

  _$OwnDamage._({this.damageId, this.repairEstimate}) : super._();
  @override
  OwnDamage rebuild(void Function(OwnDamageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnDamageBuilder toBuilder() => OwnDamageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnDamage &&
        damageId == other.damageId &&
        repairEstimate == other.repairEstimate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, damageId.hashCode);
    _$hash = $jc(_$hash, repairEstimate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OwnDamage')
          ..add('damageId', damageId)
          ..add('repairEstimate', repairEstimate))
        .toString();
  }
}

class OwnDamageBuilder implements Builder<OwnDamage, OwnDamageBuilder> {
  _$OwnDamage? _$v;

  String? _damageId;
  String? get damageId => _$this._damageId;
  set damageId(String? damageId) => _$this._damageId = damageId;

  num? _repairEstimate;
  num? get repairEstimate => _$this._repairEstimate;
  set repairEstimate(num? repairEstimate) =>
      _$this._repairEstimate = repairEstimate;

  OwnDamageBuilder() {
    OwnDamage._defaults(this);
  }

  OwnDamageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _damageId = $v.damageId;
      _repairEstimate = $v.repairEstimate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OwnDamage other) {
    _$v = other as _$OwnDamage;
  }

  @override
  void update(void Function(OwnDamageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnDamage build() => _build();

  _$OwnDamage _build() {
    final _$result = _$v ??
        _$OwnDamage._(
          damageId: damageId,
          repairEstimate: repairEstimate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
