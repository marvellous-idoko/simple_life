//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'life_quote.g.dart';

/// LifeQuote
///
/// Properties:
/// * [sumAssured] 
@BuiltValue()
abstract class LifeQuote implements Built<LifeQuote, LifeQuoteBuilder> {
  @BuiltValueField(wireName: r'sumAssured')
  num? get sumAssured;

  LifeQuote._();

  factory LifeQuote([void updates(LifeQuoteBuilder b)]) = _$LifeQuote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LifeQuoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LifeQuote> get serializer => _$LifeQuoteSerializer();
}

class _$LifeQuoteSerializer implements PrimitiveSerializer<LifeQuote> {
  @override
  final Iterable<Type> types = const [LifeQuote, _$LifeQuote];

  @override
  final String wireName = r'LifeQuote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LifeQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sumAssured != null) {
      yield r'sumAssured';
      yield serializers.serialize(
        object.sumAssured,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LifeQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LifeQuoteBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sumAssured = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LifeQuote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LifeQuoteBuilder();
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


