//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_business_protect_quote200_response.g.dart';

/// GetBusinessProtectQuote200Response
///
/// Properties:
/// * [premium] 
@BuiltValue()
abstract class GetBusinessProtectQuote200Response implements Built<GetBusinessProtectQuote200Response, GetBusinessProtectQuote200ResponseBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  GetBusinessProtectQuote200Response._();

  factory GetBusinessProtectQuote200Response([void updates(GetBusinessProtectQuote200ResponseBuilder b)]) = _$GetBusinessProtectQuote200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetBusinessProtectQuote200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetBusinessProtectQuote200Response> get serializer => _$GetBusinessProtectQuote200ResponseSerializer();
}

class _$GetBusinessProtectQuote200ResponseSerializer implements PrimitiveSerializer<GetBusinessProtectQuote200Response> {
  @override
  final Iterable<Type> types = const [GetBusinessProtectQuote200Response, _$GetBusinessProtectQuote200Response];

  @override
  final String wireName = r'GetBusinessProtectQuote200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetBusinessProtectQuote200Response object, {
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
    GetBusinessProtectQuote200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetBusinessProtectQuote200ResponseBuilder result,
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
  GetBusinessProtectQuote200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetBusinessProtectQuote200ResponseBuilder();
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


