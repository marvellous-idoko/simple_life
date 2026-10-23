//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'is_password_login200_response.g.dart';

/// IsPasswordLogin200Response
///
/// Properties:
/// * [password] 
/// * [exists] 
@BuiltValue()
abstract class IsPasswordLogin200Response implements Built<IsPasswordLogin200Response, IsPasswordLogin200ResponseBuilder> {
  @BuiltValueField(wireName: r'password')
  bool? get password;

  @BuiltValueField(wireName: r'exists')
  bool? get exists;

  IsPasswordLogin200Response._();

  factory IsPasswordLogin200Response([void updates(IsPasswordLogin200ResponseBuilder b)]) = _$IsPasswordLogin200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IsPasswordLogin200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IsPasswordLogin200Response> get serializer => _$IsPasswordLogin200ResponseSerializer();
}

class _$IsPasswordLogin200ResponseSerializer implements PrimitiveSerializer<IsPasswordLogin200Response> {
  @override
  final Iterable<Type> types = const [IsPasswordLogin200Response, _$IsPasswordLogin200Response];

  @override
  final String wireName = r'IsPasswordLogin200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IsPasswordLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(bool),
      );
    }
    if (object.exists != null) {
      yield r'exists';
      yield serializers.serialize(
        object.exists,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IsPasswordLogin200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IsPasswordLogin200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'exists':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.exists = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IsPasswordLogin200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IsPasswordLogin200ResponseBuilder();
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


