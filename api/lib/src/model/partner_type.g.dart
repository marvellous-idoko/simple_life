// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PartnerType _$companyPartner = const PartnerType._('companyPartner');
const PartnerType _$individualPartner =
    const PartnerType._('individualPartner');
const PartnerType _$broker = const PartnerType._('broker');
const PartnerType _$aggregatorPartner =
    const PartnerType._('aggregatorPartner');

PartnerType _$valueOf(String name) {
  switch (name) {
    case 'companyPartner':
      return _$companyPartner;
    case 'individualPartner':
      return _$individualPartner;
    case 'broker':
      return _$broker;
    case 'aggregatorPartner':
      return _$aggregatorPartner;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PartnerType> _$values =
    BuiltSet<PartnerType>(const <PartnerType>[
  _$companyPartner,
  _$individualPartner,
  _$broker,
  _$aggregatorPartner,
]);

class _$PartnerTypeMeta {
  const _$PartnerTypeMeta();
  PartnerType get companyPartner => _$companyPartner;
  PartnerType get individualPartner => _$individualPartner;
  PartnerType get broker => _$broker;
  PartnerType get aggregatorPartner => _$aggregatorPartner;
  PartnerType valueOf(String name) => _$valueOf(name);
  BuiltSet<PartnerType> get values => _$values;
}

abstract class _$PartnerTypeMixin {
  // ignore: non_constant_identifier_names
  _$PartnerTypeMeta get PartnerType => const _$PartnerTypeMeta();
}

Serializer<PartnerType> _$partnerTypeSerializer = _$PartnerTypeSerializer();

class _$PartnerTypeSerializer implements PrimitiveSerializer<PartnerType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'companyPartner': 'companyPartner',
    'individualPartner': 'individualPartner',
    'broker': 'broker',
    'aggregatorPartner': 'aggregatorPartner',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'companyPartner': 'companyPartner',
    'individualPartner': 'individualPartner',
    'broker': 'broker',
    'aggregatorPartner': 'aggregatorPartner',
  };

  @override
  final Iterable<Type> types = const <Type>[PartnerType];
  @override
  final String wireName = 'PartnerType';

  @override
  Object serialize(Serializers serializers, PartnerType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PartnerType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PartnerType.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
