//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_heirs3_years_premium200_response.g.dart';

/// GetHeirs3YearsPremium200Response
///
/// Properties:
/// * [premium] 
@BuiltValue()
abstract class GetHeirs3YearsPremium200Response implements Built<GetHeirs3YearsPremium200Response, GetHeirs3YearsPremium200ResponseBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  GetHeirs3YearsPremium200Response._();

  factory GetHeirs3YearsPremium200Response([void updates(GetHeirs3YearsPremium200ResponseBuilder b)]) = _$GetHeirs3YearsPremium200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetHeirs3YearsPremium200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetHeirs3YearsPremium200Response> get serializer => _$GetHeirs3YearsPremium200ResponseSerializer();
}

class _$GetHeirs3YearsPremium200ResponseSerializer implements PrimitiveSerializer<GetHeirs3YearsPremium200Response> {
  @override
  final Iterable<Type> types = const [GetHeirs3YearsPremium200Response, _$GetHeirs3YearsPremium200Response];

  @override
  final String wireName = r'GetHeirs3YearsPremium200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetHeirs3YearsPremium200Response object, {
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
    GetHeirs3YearsPremium200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetHeirs3YearsPremium200ResponseBuilder result,
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
  GetHeirs3YearsPremium200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHeirs3YearsPremium200ResponseBuilder();
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


