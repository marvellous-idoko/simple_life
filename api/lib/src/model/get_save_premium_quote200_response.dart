//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_save_premium_quote200_response.g.dart';

/// GetSavePremiumQuote200Response
///
/// Properties:
/// * [sumAssured] 
/// * [savings] 
@BuiltValue()
abstract class GetSavePremiumQuote200Response implements Built<GetSavePremiumQuote200Response, GetSavePremiumQuote200ResponseBuilder> {
  @BuiltValueField(wireName: r'sumAssured')
  num? get sumAssured;

  @BuiltValueField(wireName: r'savings')
  num? get savings;

  GetSavePremiumQuote200Response._();

  factory GetSavePremiumQuote200Response([void updates(GetSavePremiumQuote200ResponseBuilder b)]) = _$GetSavePremiumQuote200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSavePremiumQuote200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSavePremiumQuote200Response> get serializer => _$GetSavePremiumQuote200ResponseSerializer();
}

class _$GetSavePremiumQuote200ResponseSerializer implements PrimitiveSerializer<GetSavePremiumQuote200Response> {
  @override
  final Iterable<Type> types = const [GetSavePremiumQuote200Response, _$GetSavePremiumQuote200Response];

  @override
  final String wireName = r'GetSavePremiumQuote200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSavePremiumQuote200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.sumAssured != null) {
      yield r'sumAssured';
      yield serializers.serialize(
        object.sumAssured,
        specifiedType: const FullType(num),
      );
    }
    if (object.savings != null) {
      yield r'savings';
      yield serializers.serialize(
        object.savings,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSavePremiumQuote200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSavePremiumQuote200ResponseBuilder result,
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
        case r'savings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.savings = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetSavePremiumQuote200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSavePremiumQuote200ResponseBuilder();
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


