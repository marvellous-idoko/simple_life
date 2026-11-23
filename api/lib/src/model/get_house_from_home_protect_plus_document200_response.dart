//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_house_from_home_protect_plus_document200_response.g.dart';

/// GetHouseFromHomeProtectPlusDocument200Response
///
/// Properties:
/// * [ownerId] 
/// * [premium] - Premium to pay
@BuiltValue()
abstract class GetHouseFromHomeProtectPlusDocument200Response implements Built<GetHouseFromHomeProtectPlusDocument200Response, GetHouseFromHomeProtectPlusDocument200ResponseBuilder> {
  @BuiltValueField(wireName: r'ownerId')
  String? get ownerId;

  /// Premium to pay
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  GetHouseFromHomeProtectPlusDocument200Response._();

  factory GetHouseFromHomeProtectPlusDocument200Response([void updates(GetHouseFromHomeProtectPlusDocument200ResponseBuilder b)]) = _$GetHouseFromHomeProtectPlusDocument200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetHouseFromHomeProtectPlusDocument200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetHouseFromHomeProtectPlusDocument200Response> get serializer => _$GetHouseFromHomeProtectPlusDocument200ResponseSerializer();
}

class _$GetHouseFromHomeProtectPlusDocument200ResponseSerializer implements PrimitiveSerializer<GetHouseFromHomeProtectPlusDocument200Response> {
  @override
  final Iterable<Type> types = const [GetHouseFromHomeProtectPlusDocument200Response, _$GetHouseFromHomeProtectPlusDocument200Response];

  @override
  final String wireName = r'GetHouseFromHomeProtectPlusDocument200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetHouseFromHomeProtectPlusDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(String),
      );
    }
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
    GetHouseFromHomeProtectPlusDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetHouseFromHomeProtectPlusDocument200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
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
  GetHouseFromHomeProtectPlusDocument200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHouseFromHomeProtectPlusDocument200ResponseBuilder();
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


