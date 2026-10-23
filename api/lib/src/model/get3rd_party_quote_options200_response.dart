//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/get3rd_party_quote_options200_response_premium.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get3rd_party_quote_options200_response.g.dart';

/// Get3rdPartyQuoteOptions200Response
///
/// Properties:
/// * [premium] 
@BuiltValue()
abstract class Get3rdPartyQuoteOptions200Response implements Built<Get3rdPartyQuoteOptions200Response, Get3rdPartyQuoteOptions200ResponseBuilder> {
  @BuiltValueField(wireName: r'premium')
  Get3rdPartyQuoteOptions200ResponsePremium? get premium;

  Get3rdPartyQuoteOptions200Response._();

  factory Get3rdPartyQuoteOptions200Response([void updates(Get3rdPartyQuoteOptions200ResponseBuilder b)]) = _$Get3rdPartyQuoteOptions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Get3rdPartyQuoteOptions200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Get3rdPartyQuoteOptions200Response> get serializer => _$Get3rdPartyQuoteOptions200ResponseSerializer();
}

class _$Get3rdPartyQuoteOptions200ResponseSerializer implements PrimitiveSerializer<Get3rdPartyQuoteOptions200Response> {
  @override
  final Iterable<Type> types = const [Get3rdPartyQuoteOptions200Response, _$Get3rdPartyQuoteOptions200Response];

  @override
  final String wireName = r'Get3rdPartyQuoteOptions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Get3rdPartyQuoteOptions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(Get3rdPartyQuoteOptions200ResponsePremium),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Get3rdPartyQuoteOptions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Get3rdPartyQuoteOptions200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Get3rdPartyQuoteOptions200ResponsePremium),
          ) as Get3rdPartyQuoteOptions200ResponsePremium?;
          if (valueDes == null) continue;
          result.premium.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Get3rdPartyQuoteOptions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Get3rdPartyQuoteOptions200ResponseBuilder();
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


