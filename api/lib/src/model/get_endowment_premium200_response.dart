//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_endowment_premium200_response.g.dart';

/// GetEndowmentPremium200Response
///
/// Properties:
/// * [premium] 
@BuiltValue()
abstract class GetEndowmentPremium200Response implements Built<GetEndowmentPremium200Response, GetEndowmentPremium200ResponseBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  GetEndowmentPremium200Response._();

  factory GetEndowmentPremium200Response([void updates(GetEndowmentPremium200ResponseBuilder b)]) = _$GetEndowmentPremium200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetEndowmentPremium200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetEndowmentPremium200Response> get serializer => _$GetEndowmentPremium200ResponseSerializer();
}

class _$GetEndowmentPremium200ResponseSerializer implements PrimitiveSerializer<GetEndowmentPremium200Response> {
  @override
  final Iterable<Type> types = const [GetEndowmentPremium200Response, _$GetEndowmentPremium200Response];

  @override
  final String wireName = r'GetEndowmentPremium200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetEndowmentPremium200Response object, {
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
    GetEndowmentPremium200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetEndowmentPremium200ResponseBuilder result,
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
  GetEndowmentPremium200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetEndowmentPremium200ResponseBuilder();
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


