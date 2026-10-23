//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_user_without_password_request.g.dart';

/// RegisterUserWithoutPasswordRequest
///
/// Properties:
/// * [identity] 
/// * [name] 
/// * [phone] 
@BuiltValue()
abstract class RegisterUserWithoutPasswordRequest implements Built<RegisterUserWithoutPasswordRequest, RegisterUserWithoutPasswordRequestBuilder> {
  @BuiltValueField(wireName: r'identity')
  String? get identity;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  RegisterUserWithoutPasswordRequest._();

  factory RegisterUserWithoutPasswordRequest([void updates(RegisterUserWithoutPasswordRequestBuilder b)]) = _$RegisterUserWithoutPasswordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RegisterUserWithoutPasswordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RegisterUserWithoutPasswordRequest> get serializer => _$RegisterUserWithoutPasswordRequestSerializer();
}

class _$RegisterUserWithoutPasswordRequestSerializer implements PrimitiveSerializer<RegisterUserWithoutPasswordRequest> {
  @override
  final Iterable<Type> types = const [RegisterUserWithoutPasswordRequest, _$RegisterUserWithoutPasswordRequest];

  @override
  final String wireName = r'RegisterUserWithoutPasswordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RegisterUserWithoutPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identity != null) {
      yield r'identity';
      yield serializers.serialize(
        object.identity,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RegisterUserWithoutPasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RegisterUserWithoutPasswordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'identity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.identity = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RegisterUserWithoutPasswordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterUserWithoutPasswordRequestBuilder();
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


