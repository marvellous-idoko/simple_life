// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_particulars.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OwnerParticularsBuildingTypeEnum
    _$ownerParticularsBuildingTypeEnum_bungalow =
    const OwnerParticularsBuildingTypeEnum._('bungalow');
const OwnerParticularsBuildingTypeEnum _$ownerParticularsBuildingTypeEnum_flat =
    const OwnerParticularsBuildingTypeEnum._('flat');
const OwnerParticularsBuildingTypeEnum
    _$ownerParticularsBuildingTypeEnum_condo =
    const OwnerParticularsBuildingTypeEnum._('condo');
const OwnerParticularsBuildingTypeEnum
    _$ownerParticularsBuildingTypeEnum_duplex =
    const OwnerParticularsBuildingTypeEnum._('duplex');
const OwnerParticularsBuildingTypeEnum
    _$ownerParticularsBuildingTypeEnum_multiStorey =
    const OwnerParticularsBuildingTypeEnum._('multiStorey');
const OwnerParticularsBuildingTypeEnum
    _$ownerParticularsBuildingTypeEnum_warehouse =
    const OwnerParticularsBuildingTypeEnum._('warehouse');

OwnerParticularsBuildingTypeEnum _$ownerParticularsBuildingTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'bungalow':
      return _$ownerParticularsBuildingTypeEnum_bungalow;
    case 'flat':
      return _$ownerParticularsBuildingTypeEnum_flat;
    case 'condo':
      return _$ownerParticularsBuildingTypeEnum_condo;
    case 'duplex':
      return _$ownerParticularsBuildingTypeEnum_duplex;
    case 'multiStorey':
      return _$ownerParticularsBuildingTypeEnum_multiStorey;
    case 'warehouse':
      return _$ownerParticularsBuildingTypeEnum_warehouse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnerParticularsBuildingTypeEnum>
    _$ownerParticularsBuildingTypeEnumValues = BuiltSet<
        OwnerParticularsBuildingTypeEnum>(const <OwnerParticularsBuildingTypeEnum>[
  _$ownerParticularsBuildingTypeEnum_bungalow,
  _$ownerParticularsBuildingTypeEnum_flat,
  _$ownerParticularsBuildingTypeEnum_condo,
  _$ownerParticularsBuildingTypeEnum_duplex,
  _$ownerParticularsBuildingTypeEnum_multiStorey,
  _$ownerParticularsBuildingTypeEnum_warehouse,
]);

const OwnerParticularsMaterialEnum _$ownerParticularsMaterialEnum_concrete =
    const OwnerParticularsMaterialEnum._('concrete');
const OwnerParticularsMaterialEnum _$ownerParticularsMaterialEnum_clay =
    const OwnerParticularsMaterialEnum._('clay');
const OwnerParticularsMaterialEnum _$ownerParticularsMaterialEnum_wood =
    const OwnerParticularsMaterialEnum._('wood');

OwnerParticularsMaterialEnum _$ownerParticularsMaterialEnumValueOf(
    String name) {
  switch (name) {
    case 'concrete':
      return _$ownerParticularsMaterialEnum_concrete;
    case 'clay':
      return _$ownerParticularsMaterialEnum_clay;
    case 'wood':
      return _$ownerParticularsMaterialEnum_wood;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OwnerParticularsMaterialEnum>
    _$ownerParticularsMaterialEnumValues =
    BuiltSet<OwnerParticularsMaterialEnum>(const <OwnerParticularsMaterialEnum>[
  _$ownerParticularsMaterialEnum_concrete,
  _$ownerParticularsMaterialEnum_clay,
  _$ownerParticularsMaterialEnum_wood,
]);

Serializer<OwnerParticularsBuildingTypeEnum>
    _$ownerParticularsBuildingTypeEnumSerializer =
    _$OwnerParticularsBuildingTypeEnumSerializer();
Serializer<OwnerParticularsMaterialEnum>
    _$ownerParticularsMaterialEnumSerializer =
    _$OwnerParticularsMaterialEnumSerializer();

class _$OwnerParticularsBuildingTypeEnumSerializer
    implements PrimitiveSerializer<OwnerParticularsBuildingTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bungalow': 'bungalow',
    'flat': 'flat',
    'condo': 'condo',
    'duplex': 'duplex',
    'multiStorey': 'multi-storey',
    'warehouse': 'warehouse',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bungalow': 'bungalow',
    'flat': 'flat',
    'condo': 'condo',
    'duplex': 'duplex',
    'multi-storey': 'multiStorey',
    'warehouse': 'warehouse',
  };

  @override
  final Iterable<Type> types = const <Type>[OwnerParticularsBuildingTypeEnum];
  @override
  final String wireName = 'OwnerParticularsBuildingTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OwnerParticularsBuildingTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OwnerParticularsBuildingTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OwnerParticularsBuildingTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OwnerParticularsMaterialEnumSerializer
    implements PrimitiveSerializer<OwnerParticularsMaterialEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'concrete': 'concrete',
    'clay': 'clay',
    'wood': 'wood',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'concrete': 'concrete',
    'clay': 'clay',
    'wood': 'wood',
  };

  @override
  final Iterable<Type> types = const <Type>[OwnerParticularsMaterialEnum];
  @override
  final String wireName = 'OwnerParticularsMaterialEnum';

  @override
  Object serialize(Serializers serializers, OwnerParticularsMaterialEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OwnerParticularsMaterialEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OwnerParticularsMaterialEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract class OwnerParticularsBuilder {
  void replace(OwnerParticulars other);
  void update(void Function(OwnerParticularsBuilder) updates);
  String? get ownerId;
  set ownerId(String? ownerId);

  String? get owner;
  set owner(String? owner);

  String? get description;
  set description(String? description);

  num? get value;
  set value(num? value);

  OwnerParticularsBuildingTypeEnum? get buildingType;
  set buildingType(OwnerParticularsBuildingTypeEnum? buildingType);

  OwnerParticularsMaterialEnum? get material;
  set material(OwnerParticularsMaterialEnum? material);

  AddressBuilder get address;
  set address(AddressBuilder? address);
}

class _$$OwnerParticulars extends $OwnerParticulars {
  @override
  final String? ownerId;
  @override
  final String? owner;
  @override
  final String? description;
  @override
  final num? value;
  @override
  final OwnerParticularsBuildingTypeEnum? buildingType;
  @override
  final OwnerParticularsMaterialEnum? material;
  @override
  final Address? address;

  factory _$$OwnerParticulars(
          [void Function($OwnerParticularsBuilder)? updates]) =>
      ($OwnerParticularsBuilder()..update(updates))._build();

  _$$OwnerParticulars._(
      {this.ownerId,
      this.owner,
      this.description,
      this.value,
      this.buildingType,
      this.material,
      this.address})
      : super._();
  @override
  $OwnerParticulars rebuild(void Function($OwnerParticularsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $OwnerParticularsBuilder toBuilder() =>
      $OwnerParticularsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $OwnerParticulars &&
        ownerId == other.ownerId &&
        owner == other.owner &&
        description == other.description &&
        value == other.value &&
        buildingType == other.buildingType &&
        material == other.material &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, buildingType.hashCode);
    _$hash = $jc(_$hash, material.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$OwnerParticulars')
          ..add('ownerId', ownerId)
          ..add('owner', owner)
          ..add('description', description)
          ..add('value', value)
          ..add('buildingType', buildingType)
          ..add('material', material)
          ..add('address', address))
        .toString();
  }
}

class $OwnerParticularsBuilder
    implements
        Builder<$OwnerParticulars, $OwnerParticularsBuilder>,
        OwnerParticularsBuilder {
  _$$OwnerParticulars? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(covariant String? ownerId) => _$this._ownerId = ownerId;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(covariant String? owner) => _$this._owner = owner;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  num? _value;
  num? get value => _$this._value;
  set value(covariant num? value) => _$this._value = value;

  OwnerParticularsBuildingTypeEnum? _buildingType;
  OwnerParticularsBuildingTypeEnum? get buildingType => _$this._buildingType;
  set buildingType(covariant OwnerParticularsBuildingTypeEnum? buildingType) =>
      _$this._buildingType = buildingType;

  OwnerParticularsMaterialEnum? _material;
  OwnerParticularsMaterialEnum? get material => _$this._material;
  set material(covariant OwnerParticularsMaterialEnum? material) =>
      _$this._material = material;

  AddressBuilder? _address;
  AddressBuilder get address => _$this._address ??= AddressBuilder();
  set address(covariant AddressBuilder? address) => _$this._address = address;

  $OwnerParticularsBuilder() {
    $OwnerParticulars._defaults(this);
  }

  $OwnerParticularsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _owner = $v.owner;
      _description = $v.description;
      _value = $v.value;
      _buildingType = $v.buildingType;
      _material = $v.material;
      _address = $v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $OwnerParticulars other) {
    _$v = other as _$$OwnerParticulars;
  }

  @override
  void update(void Function($OwnerParticularsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $OwnerParticulars build() => _build();

  _$$OwnerParticulars _build() {
    _$$OwnerParticulars _$result;
    try {
      _$result = _$v ??
          _$$OwnerParticulars._(
            ownerId: ownerId,
            owner: owner,
            description: description,
            value: value,
            buildingType: buildingType,
            material: material,
            address: _address?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'$OwnerParticulars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
