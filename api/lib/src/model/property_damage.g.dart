// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_damage.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PropertyDamage extends PropertyDamage {
  @override
  final String? damageId;
  @override
  final String? owner;
  @override
  final String? propertyType;
  @override
  final String? propertyAddress;
  @override
  final String? ownerAddress;
  @override
  final String? ownerPhone;
  @override
  final num? repairEstimate;
  @override
  final Uint8List? file;

  factory _$PropertyDamage([void Function(PropertyDamageBuilder)? updates]) =>
      (PropertyDamageBuilder()..update(updates))._build();

  _$PropertyDamage._(
      {this.damageId,
      this.owner,
      this.propertyType,
      this.propertyAddress,
      this.ownerAddress,
      this.ownerPhone,
      this.repairEstimate,
      this.file})
      : super._();
  @override
  PropertyDamage rebuild(void Function(PropertyDamageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyDamageBuilder toBuilder() => PropertyDamageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertyDamage &&
        damageId == other.damageId &&
        owner == other.owner &&
        propertyType == other.propertyType &&
        propertyAddress == other.propertyAddress &&
        ownerAddress == other.ownerAddress &&
        ownerPhone == other.ownerPhone &&
        repairEstimate == other.repairEstimate &&
        file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, damageId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, propertyType.hashCode);
    _$hash = $jc(_$hash, propertyAddress.hashCode);
    _$hash = $jc(_$hash, ownerAddress.hashCode);
    _$hash = $jc(_$hash, ownerPhone.hashCode);
    _$hash = $jc(_$hash, repairEstimate.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropertyDamage')
          ..add('damageId', damageId)
          ..add('owner', owner)
          ..add('propertyType', propertyType)
          ..add('propertyAddress', propertyAddress)
          ..add('ownerAddress', ownerAddress)
          ..add('ownerPhone', ownerPhone)
          ..add('repairEstimate', repairEstimate)
          ..add('file', file))
        .toString();
  }
}

class PropertyDamageBuilder
    implements Builder<PropertyDamage, PropertyDamageBuilder> {
  _$PropertyDamage? _$v;

  String? _damageId;
  String? get damageId => _$this._damageId;
  set damageId(String? damageId) => _$this._damageId = damageId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(String? owner) => _$this._owner = owner;

  String? _propertyType;
  String? get propertyType => _$this._propertyType;
  set propertyType(String? propertyType) => _$this._propertyType = propertyType;

  String? _propertyAddress;
  String? get propertyAddress => _$this._propertyAddress;
  set propertyAddress(String? propertyAddress) =>
      _$this._propertyAddress = propertyAddress;

  String? _ownerAddress;
  String? get ownerAddress => _$this._ownerAddress;
  set ownerAddress(String? ownerAddress) => _$this._ownerAddress = ownerAddress;

  String? _ownerPhone;
  String? get ownerPhone => _$this._ownerPhone;
  set ownerPhone(String? ownerPhone) => _$this._ownerPhone = ownerPhone;

  num? _repairEstimate;
  num? get repairEstimate => _$this._repairEstimate;
  set repairEstimate(num? repairEstimate) =>
      _$this._repairEstimate = repairEstimate;

  Uint8List? _file;
  Uint8List? get file => _$this._file;
  set file(Uint8List? file) => _$this._file = file;

  PropertyDamageBuilder() {
    PropertyDamage._defaults(this);
  }

  PropertyDamageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _damageId = $v.damageId;
      _owner = $v.owner;
      _propertyType = $v.propertyType;
      _propertyAddress = $v.propertyAddress;
      _ownerAddress = $v.ownerAddress;
      _ownerPhone = $v.ownerPhone;
      _repairEstimate = $v.repairEstimate;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertyDamage other) {
    _$v = other as _$PropertyDamage;
  }

  @override
  void update(void Function(PropertyDamageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertyDamage build() => _build();

  _$PropertyDamage _build() {
    final _$result = _$v ??
        _$PropertyDamage._(
          damageId: damageId,
          owner: owner,
          propertyType: propertyType,
          propertyAddress: propertyAddress,
          ownerAddress: ownerAddress,
          ownerPhone: ownerPhone,
          repairEstimate: repairEstimate,
          file: file,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
