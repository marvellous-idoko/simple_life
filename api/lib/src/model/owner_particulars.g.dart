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

class _$OwnerParticulars extends OwnerParticulars {
  @override
  final String? owner;
  @override
  final OwnerParticularsMaterialEnum? material;
  @override
  final String? description;
  @override
  final String? ownerId;
  @override
  final num? value;
  @override
  final OwnerParticularsBuildingTypeEnum? buildingType;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? address;
  @override
  final String? country;
  @override
  final String? street;
  @override
  final String? streetNumber;
  @override
  final String? postCode;

  factory _$OwnerParticulars(
          [void Function(OwnerParticularsBuilder)? updates]) =>
      (OwnerParticularsBuilder()..update(updates))._build();

  _$OwnerParticulars._(
      {this.owner,
      this.material,
      this.description,
      this.ownerId,
      this.value,
      this.buildingType,
      this.city,
      this.state,
      this.address,
      this.country,
      this.street,
      this.streetNumber,
      this.postCode})
      : super._();
  @override
  OwnerParticulars rebuild(void Function(OwnerParticularsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OwnerParticularsBuilder toBuilder() =>
      OwnerParticularsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OwnerParticulars &&
        owner == other.owner &&
        material == other.material &&
        description == other.description &&
        ownerId == other.ownerId &&
        value == other.value &&
        buildingType == other.buildingType &&
        city == other.city &&
        state == other.state &&
        address == other.address &&
        country == other.country &&
        street == other.street &&
        streetNumber == other.streetNumber &&
        postCode == other.postCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, material.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, buildingType.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, streetNumber.hashCode);
    _$hash = $jc(_$hash, postCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OwnerParticulars')
          ..add('owner', owner)
          ..add('material', material)
          ..add('description', description)
          ..add('ownerId', ownerId)
          ..add('value', value)
          ..add('buildingType', buildingType)
          ..add('city', city)
          ..add('state', state)
          ..add('address', address)
          ..add('country', country)
          ..add('street', street)
          ..add('streetNumber', streetNumber)
          ..add('postCode', postCode))
        .toString();
  }
}

class OwnerParticularsBuilder
    implements
        Builder<OwnerParticulars, OwnerParticularsBuilder>,
        AddressBuilder {
  _$OwnerParticulars? _$v;

  String? _owner;
  String? get owner => _$this._owner;
  set owner(covariant String? owner) => _$this._owner = owner;

  OwnerParticularsMaterialEnum? _material;
  OwnerParticularsMaterialEnum? get material => _$this._material;
  set material(covariant OwnerParticularsMaterialEnum? material) =>
      _$this._material = material;

  String? _description;
  String? get description => _$this._description;
  set description(covariant String? description) =>
      _$this._description = description;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(covariant String? ownerId) => _$this._ownerId = ownerId;

  num? _value;
  num? get value => _$this._value;
  set value(covariant num? value) => _$this._value = value;

  OwnerParticularsBuildingTypeEnum? _buildingType;
  OwnerParticularsBuildingTypeEnum? get buildingType => _$this._buildingType;
  set buildingType(covariant OwnerParticularsBuildingTypeEnum? buildingType) =>
      _$this._buildingType = buildingType;

  String? _city;
  String? get city => _$this._city;
  set city(covariant String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(covariant String? state) => _$this._state = state;

  String? _address;
  String? get address => _$this._address;
  set address(covariant String? address) => _$this._address = address;

  String? _country;
  String? get country => _$this._country;
  set country(covariant String? country) => _$this._country = country;

  String? _street;
  String? get street => _$this._street;
  set street(covariant String? street) => _$this._street = street;

  String? _streetNumber;
  String? get streetNumber => _$this._streetNumber;
  set streetNumber(covariant String? streetNumber) =>
      _$this._streetNumber = streetNumber;

  String? _postCode;
  String? get postCode => _$this._postCode;
  set postCode(covariant String? postCode) => _$this._postCode = postCode;

  OwnerParticularsBuilder() {
    OwnerParticulars._defaults(this);
  }

  OwnerParticularsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner;
      _material = $v.material;
      _description = $v.description;
      _ownerId = $v.ownerId;
      _value = $v.value;
      _buildingType = $v.buildingType;
      _city = $v.city;
      _state = $v.state;
      _address = $v.address;
      _country = $v.country;
      _street = $v.street;
      _streetNumber = $v.streetNumber;
      _postCode = $v.postCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant OwnerParticulars other) {
    _$v = other as _$OwnerParticulars;
  }

  @override
  void update(void Function(OwnerParticularsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OwnerParticulars build() => _build();

  _$OwnerParticulars _build() {
    final _$result = _$v ??
        _$OwnerParticulars._(
          owner: owner,
          material: material,
          description: description,
          ownerId: ownerId,
          value: value,
          buildingType: buildingType,
          city: city,
          state: state,
          address: address,
          country: country,
          street: street,
          streetNumber: streetNumber,
          postCode: postCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
