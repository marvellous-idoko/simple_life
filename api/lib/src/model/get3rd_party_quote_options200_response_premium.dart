//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get3rd_party_quote_options200_response_premium.g.dart';

/// Get3rdPartyQuoteOptions200ResponsePremium
///
/// Properties:
/// * [yearly] 
/// * [halfYearly] 
/// * [quartely] 
/// * [down20Percent] 
/// * [down25Percent] 
@BuiltValue()
abstract class Get3rdPartyQuoteOptions200ResponsePremium implements Built<Get3rdPartyQuoteOptions200ResponsePremium, Get3rdPartyQuoteOptions200ResponsePremiumBuilder> {
  @BuiltValueField(wireName: r'yearly')
  num? get yearly;

  @BuiltValueField(wireName: r'halfYearly')
  num? get halfYearly;

  @BuiltValueField(wireName: r'quartely')
  num? get quartely;

  @BuiltValueField(wireName: r'down20Percent')
  num? get down20Percent;

  @BuiltValueField(wireName: r'down25Percent')
  num? get down25Percent;

  Get3rdPartyQuoteOptions200ResponsePremium._();

  factory Get3rdPartyQuoteOptions200ResponsePremium([void updates(Get3rdPartyQuoteOptions200ResponsePremiumBuilder b)]) = _$Get3rdPartyQuoteOptions200ResponsePremium;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Get3rdPartyQuoteOptions200ResponsePremiumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Get3rdPartyQuoteOptions200ResponsePremium> get serializer => _$Get3rdPartyQuoteOptions200ResponsePremiumSerializer();
}

class _$Get3rdPartyQuoteOptions200ResponsePremiumSerializer implements PrimitiveSerializer<Get3rdPartyQuoteOptions200ResponsePremium> {
  @override
  final Iterable<Type> types = const [Get3rdPartyQuoteOptions200ResponsePremium, _$Get3rdPartyQuoteOptions200ResponsePremium];

  @override
  final String wireName = r'Get3rdPartyQuoteOptions200ResponsePremium';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Get3rdPartyQuoteOptions200ResponsePremium object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(num),
      );
    }
    if (object.halfYearly != null) {
      yield r'halfYearly';
      yield serializers.serialize(
        object.halfYearly,
        specifiedType: const FullType(num),
      );
    }
    if (object.quartely != null) {
      yield r'quartely';
      yield serializers.serialize(
        object.quartely,
        specifiedType: const FullType(num),
      );
    }
    if (object.down20Percent != null) {
      yield r'down20Percent';
      yield serializers.serialize(
        object.down20Percent,
        specifiedType: const FullType(num),
      );
    }
    if (object.down25Percent != null) {
      yield r'down25Percent';
      yield serializers.serialize(
        object.down25Percent,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Get3rdPartyQuoteOptions200ResponsePremium object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Get3rdPartyQuoteOptions200ResponsePremiumBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.yearly = valueDes;
          break;
        case r'halfYearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.halfYearly = valueDes;
          break;
        case r'quartely':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.quartely = valueDes;
          break;
        case r'down20Percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.down20Percent = valueDes;
          break;
        case r'down25Percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.down25Percent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Get3rdPartyQuoteOptions200ResponsePremium deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Get3rdPartyQuoteOptions200ResponsePremiumBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


