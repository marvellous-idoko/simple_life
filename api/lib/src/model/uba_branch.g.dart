// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uba_branch.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UBABranchRegionEnum _$uBABranchRegionEnum_north =
    const UBABranchRegionEnum._('north');
const UBABranchRegionEnum _$uBABranchRegionEnum_southWest =
    const UBABranchRegionEnum._('southWest');
const UBABranchRegionEnum _$uBABranchRegionEnum_southSouth =
    const UBABranchRegionEnum._('southSouth');
const UBABranchRegionEnum _$uBABranchRegionEnum_southEast =
    const UBABranchRegionEnum._('southEast');

UBABranchRegionEnum _$uBABranchRegionEnumValueOf(String name) {
  switch (name) {
    case 'north':
      return _$uBABranchRegionEnum_north;
    case 'southWest':
      return _$uBABranchRegionEnum_southWest;
    case 'southSouth':
      return _$uBABranchRegionEnum_southSouth;
    case 'southEast':
      return _$uBABranchRegionEnum_southEast;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UBABranchRegionEnum> _$uBABranchRegionEnumValues =
    BuiltSet<UBABranchRegionEnum>(const <UBABranchRegionEnum>[
  _$uBABranchRegionEnum_north,
  _$uBABranchRegionEnum_southWest,
  _$uBABranchRegionEnum_southSouth,
  _$uBABranchRegionEnum_southEast,
]);

Serializer<UBABranchRegionEnum> _$uBABranchRegionEnumSerializer =
    _$UBABranchRegionEnumSerializer();

class _$UBABranchRegionEnumSerializer
    implements PrimitiveSerializer<UBABranchRegionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'north': 'North',
    'southWest': 'South West',
    'southSouth': 'South South',
    'southEast': 'South East',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'North': 'north',
    'South West': 'southWest',
    'South South': 'southSouth',
    'South East': 'southEast',
  };

  @override
  final Iterable<Type> types = const <Type>[UBABranchRegionEnum];
  @override
  final String wireName = 'UBABranchRegionEnum';

  @override
  Object serialize(Serializers serializers, UBABranchRegionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UBABranchRegionEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UBABranchRegionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UBABranch extends UBABranch {
  @override
  final String? ubaBranchId;
  @override
  final String? branchId;
  @override
  final String? branchName;
  @override
  final String? branchAccountNumber;
  @override
  final String? state;
  @override
  final UBABranchRegionEnum? region;
  @override
  final BuiltList<num>? eskaAgentIds;

  factory _$UBABranch([void Function(UBABranchBuilder)? updates]) =>
      (UBABranchBuilder()..update(updates))._build();

  _$UBABranch._(
      {this.ubaBranchId,
      this.branchId,
      this.branchName,
      this.branchAccountNumber,
      this.state,
      this.region,
      this.eskaAgentIds})
      : super._();
  @override
  UBABranch rebuild(void Function(UBABranchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UBABranchBuilder toBuilder() => UBABranchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UBABranch &&
        ubaBranchId == other.ubaBranchId &&
        branchId == other.branchId &&
        branchName == other.branchName &&
        branchAccountNumber == other.branchAccountNumber &&
        state == other.state &&
        region == other.region &&
        eskaAgentIds == other.eskaAgentIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ubaBranchId.hashCode);
    _$hash = $jc(_$hash, branchId.hashCode);
    _$hash = $jc(_$hash, branchName.hashCode);
    _$hash = $jc(_$hash, branchAccountNumber.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, eskaAgentIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UBABranch')
          ..add('ubaBranchId', ubaBranchId)
          ..add('branchId', branchId)
          ..add('branchName', branchName)
          ..add('branchAccountNumber', branchAccountNumber)
          ..add('state', state)
          ..add('region', region)
          ..add('eskaAgentIds', eskaAgentIds))
        .toString();
  }
}

class UBABranchBuilder implements Builder<UBABranch, UBABranchBuilder> {
  _$UBABranch? _$v;

  String? _ubaBranchId;
  String? get ubaBranchId => _$this._ubaBranchId;
  set ubaBranchId(String? ubaBranchId) => _$this._ubaBranchId = ubaBranchId;

  String? _branchId;
  String? get branchId => _$this._branchId;
  set branchId(String? branchId) => _$this._branchId = branchId;

  String? _branchName;
  String? get branchName => _$this._branchName;
  set branchName(String? branchName) => _$this._branchName = branchName;

  String? _branchAccountNumber;
  String? get branchAccountNumber => _$this._branchAccountNumber;
  set branchAccountNumber(String? branchAccountNumber) =>
      _$this._branchAccountNumber = branchAccountNumber;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  UBABranchRegionEnum? _region;
  UBABranchRegionEnum? get region => _$this._region;
  set region(UBABranchRegionEnum? region) => _$this._region = region;

  ListBuilder<num>? _eskaAgentIds;
  ListBuilder<num> get eskaAgentIds =>
      _$this._eskaAgentIds ??= ListBuilder<num>();
  set eskaAgentIds(ListBuilder<num>? eskaAgentIds) =>
      _$this._eskaAgentIds = eskaAgentIds;

  UBABranchBuilder() {
    UBABranch._defaults(this);
  }

  UBABranchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ubaBranchId = $v.ubaBranchId;
      _branchId = $v.branchId;
      _branchName = $v.branchName;
      _branchAccountNumber = $v.branchAccountNumber;
      _state = $v.state;
      _region = $v.region;
      _eskaAgentIds = $v.eskaAgentIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UBABranch other) {
    _$v = other as _$UBABranch;
  }

  @override
  void update(void Function(UBABranchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UBABranch build() => _build();

  _$UBABranch _build() {
    _$UBABranch _$result;
    try {
      _$result = _$v ??
          _$UBABranch._(
            ubaBranchId: ubaBranchId,
            branchId: branchId,
            branchName: branchName,
            branchAccountNumber: branchAccountNumber,
            state: state,
            region: region,
            eskaAgentIds: _eskaAgentIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eskaAgentIds';
        _eskaAgentIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UBABranch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
