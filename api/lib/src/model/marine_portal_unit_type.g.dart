// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marine_portal_unit_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MarinePortalUnitType _$credit = const MarinePortalUnitType._('credit');
const MarinePortalUnitType _$debit = const MarinePortalUnitType._('debit');

MarinePortalUnitType _$valueOf(String name) {
  switch (name) {
    case 'credit':
      return _$credit;
    case 'debit':
      return _$debit;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<MarinePortalUnitType> _$values =
    BuiltSet<MarinePortalUnitType>(const <MarinePortalUnitType>[
  _$credit,
  _$debit,
]);

class _$MarinePortalUnitTypeMeta {
  const _$MarinePortalUnitTypeMeta();
  MarinePortalUnitType get credit => _$credit;
  MarinePortalUnitType get debit => _$debit;
  MarinePortalUnitType valueOf(String name) => _$valueOf(name);
  BuiltSet<MarinePortalUnitType> get values => _$values;
}

abstract class _$MarinePortalUnitTypeMixin {
  // ignore: non_constant_identifier_names
  _$MarinePortalUnitTypeMeta get MarinePortalUnitType =>
      const _$MarinePortalUnitTypeMeta();
}

Serializer<MarinePortalUnitType> _$marinePortalUnitTypeSerializer =
    _$MarinePortalUnitTypeSerializer();

class _$MarinePortalUnitTypeSerializer
    implements PrimitiveSerializer<MarinePortalUnitType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credit': 'Credit',
    'debit': 'Debit',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credit': 'credit',
    'Debit': 'debit',
  };

  @override
  final Iterable<Type> types = const <Type>[MarinePortalUnitType];
  @override
  final String wireName = 'MarinePortalUnitType';

  @override
  Object serialize(Serializers serializers, MarinePortalUnitType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MarinePortalUnitType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MarinePortalUnitType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
