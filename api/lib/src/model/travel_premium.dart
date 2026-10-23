//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'travel_premium.g.dart';

/// TravelPremium
///
/// Properties:
/// * [premium] 
@BuiltValue()
abstract class TravelPremium implements Built<TravelPremium, TravelPremiumBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  TravelPremium._();

  factory TravelPremium([void updates(TravelPremiumBuilder b)]) = _$TravelPremium;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TravelPremiumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TravelPremium> get serializer => _$TravelPremiumSerializer();
}

class _$TravelPremiumSerializer implements PrimitiveSerializer<TravelPremium> {
  @override
  final Iterable<Type> types = const [TravelPremium, _$TravelPremium];

  @override
  final String wireName = r'TravelPremium';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TravelPremium object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TravelPremium object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TravelPremiumBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TravelPremium deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TravelPremiumBuilder();
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


