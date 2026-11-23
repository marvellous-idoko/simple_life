// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_owner_by_id200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnum_bungalow =
    const GetOwnerById200ResponseBuildingTypeEnum._('bungalow');
const GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnum_flat =
    const GetOwnerById200ResponseBuildingTypeEnum._('flat');
const GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnum_condo =
    const GetOwnerById200ResponseBuildingTypeEnum._('condo');
const GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnum_duplex =
    const GetOwnerById200ResponseBuildingTypeEnum._('duplex');
const GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnum_multiStorey =
    const GetOwnerById200ResponseBuildingTypeEnum._('multiStorey');
const GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnum_warehouse =
    const GetOwnerById200ResponseBuildingTypeEnum._('warehouse');

GetOwnerById200ResponseBuildingTypeEnum
    _$getOwnerById200ResponseBuildingTypeEnumValueOf(String name) {
  switch (name) {
    case 'bungalow':
      return _$getOwnerById200ResponseBuildingTypeEnum_bungalow;
    case 'flat':
      return _$getOwnerById200ResponseBuildingTypeEnum_flat;
    case 'condo':
      return _$getOwnerById200ResponseBuildingTypeEnum_condo;
    case 'duplex':
      return _$getOwnerById200ResponseBuildingTypeEnum_duplex;
    case 'multiStorey':
      return _$getOwnerById200ResponseBuildingTypeEnum_multiStorey;
    case 'warehouse':
      return _$getOwnerById200ResponseBuildingTypeEnum_warehouse;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetOwnerById200ResponseBuildingTypeEnum>
    _$getOwnerById200ResponseBuildingTypeEnumValues = BuiltSet<
        GetOwnerById200ResponseBuildingTypeEnum>(const <GetOwnerById200ResponseBuildingTypeEnum>[
  _$getOwnerById200ResponseBuildingTypeEnum_bungalow,
  _$getOwnerById200ResponseBuildingTypeEnum_flat,
  _$getOwnerById200ResponseBuildingTypeEnum_condo,
  _$getOwnerById200ResponseBuildingTypeEnum_duplex,
  _$getOwnerById200ResponseBuildingTypeEnum_multiStorey,
  _$getOwnerById200ResponseBuildingTypeEnum_warehouse,
]);

const GetOwnerById200ResponseMaterialEnum
    _$getOwnerById200ResponseMaterialEnum_concrete =
    const GetOwnerById200ResponseMaterialEnum._('concrete');
const GetOwnerById200ResponseMaterialEnum
    _$getOwnerById200ResponseMaterialEnum_clay =
    const GetOwnerById200ResponseMaterialEnum._('clay');
const GetOwnerById200ResponseMaterialEnum
    _$getOwnerById200ResponseMaterialEnum_wood =
    const GetOwnerById200ResponseMaterialEnum._('wood');

GetOwnerById200ResponseMaterialEnum
    _$getOwnerById200ResponseMaterialEnumValueOf(String name) {
  switch (name) {
    case 'concrete':
      return _$getOwnerById200ResponseMaterialEnum_concrete;
    case 'clay':
      return _$getOwnerById200ResponseMaterialEnum_clay;
    case 'wood':
      return _$getOwnerById200ResponseMaterialEnum_wood;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetOwnerById200ResponseMaterialEnum>
    _$getOwnerById200ResponseMaterialEnumValues = BuiltSet<
        GetOwnerById200ResponseMaterialEnum>(const <GetOwnerById200ResponseMaterialEnum>[
  _$getOwnerById200ResponseMaterialEnum_concrete,
  _$getOwnerById200ResponseMaterialEnum_clay,
  _$getOwnerById200ResponseMaterialEnum_wood,
]);

Serializer<GetOwnerById200ResponseBuildingTypeEnum>
    _$getOwnerById200ResponseBuildingTypeEnumSerializer =
    _$GetOwnerById200ResponseBuildingTypeEnumSerializer();
Serializer<GetOwnerById200ResponseMaterialEnum>
    _$getOwnerById200ResponseMaterialEnumSerializer =
    _$GetOwnerById200ResponseMaterialEnumSerializer();

class _$GetOwnerById200ResponseBuildingTypeEnumSerializer
    implements PrimitiveSerializer<GetOwnerById200ResponseBuildingTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    GetOwnerById200ResponseBuildingTypeEnum
  ];
  @override
  final String wireName = 'GetOwnerById200ResponseBuildingTypeEnum';

  @override
  Object serialize(Serializers serializers,
          GetOwnerById200ResponseBuildingTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetOwnerById200ResponseBuildingTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetOwnerById200ResponseBuildingTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetOwnerById200ResponseMaterialEnumSerializer
    implements PrimitiveSerializer<GetOwnerById200ResponseMaterialEnum> {
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
  final Iterable<Type> types = const <Type>[
    GetOwnerById200ResponseMaterialEnum
  ];
  @override
  final String wireName = 'GetOwnerById200ResponseMaterialEnum';

  @override
  Object serialize(
          Serializers serializers, GetOwnerById200ResponseMaterialEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetOwnerById200ResponseMaterialEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetOwnerById200ResponseMaterialEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetOwnerById200Response extends GetOwnerById200Response {
  @override
  final BuiltList<HouseItem>? stationary;
  @override
  final BuiltList<HouseItem>? mobile;
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

  factory _$GetOwnerById200Response(
          [void Function(GetOwnerById200ResponseBuilder)? updates]) =>
      (GetOwnerById200ResponseBuilder()..update(updates))._build();

  _$GetOwnerById200Response._(
      {this.stationary,
      this.mobile,
      this.ownerId,
      this.owner,
      this.description,
      this.value,
      this.buildingType,
      this.material,
      this.address})
      : super._();
  @override
  GetOwnerById200Response rebuild(
          void Function(GetOwnerById200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOwnerById200ResponseBuilder toBuilder() =>
      GetOwnerById200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOwnerById200Response &&
        stationary == other.stationary &&
        mobile == other.mobile &&
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
    _$hash = $jc(_$hash, stationary.hashCode);
    _$hash = $jc(_$hash, mobile.hashCode);
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
    return (newBuiltValueToStringHelper(r'GetOwnerById200Response')
          ..add('stationary', stationary)
          ..add('mobile', mobile)
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

class GetOwnerById200ResponseBuilder
    implements
        Builder<GetOwnerById200Response, GetOwnerById200ResponseBuilder>,
        OwnerParticularsBuilder {
  _$GetOwnerById200Response? _$v;

  ListBuilder<HouseItem>? _stationary;
  ListBuilder<HouseItem> get stationary =>
      _$this._stationary ??= ListBuilder<HouseItem>();
  set stationary(covariant ListBuilder<HouseItem>? stationary) =>
      _$this._stationary = stationary;

  ListBuilder<HouseItem>? _mobile;
  ListBuilder<HouseItem> get mobile =>
      _$this._mobile ??= ListBuilder<HouseItem>();
  set mobile(covariant ListBuilder<HouseItem>? mobile) =>
      _$this._mobile = mobile;

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

  GetOwnerById200ResponseBuilder() {
    GetOwnerById200Response._defaults(this);
  }

  GetOwnerById200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stationary = $v.stationary?.toBuilder();
      _mobile = $v.mobile?.toBuilder();
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
  void replace(covariant GetOwnerById200Response other) {
    _$v = other as _$GetOwnerById200Response;
  }

  @override
  void update(void Function(GetOwnerById200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOwnerById200Response build() => _build();

  _$GetOwnerById200Response _build() {
    _$GetOwnerById200Response _$result;
    try {
      _$result = _$v ??
          _$GetOwnerById200Response._(
            stationary: _stationary?.build(),
            mobile: _mobile?.build(),
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
        _$failedField = 'stationary';
        _stationary?.build();
        _$failedField = 'mobile';
        _mobile?.build();

        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetOwnerById200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
