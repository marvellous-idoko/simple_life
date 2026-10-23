//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_password_request.g.dart';

/// CreatePasswordRequest
///
/// Properties:
/// * [password] 
/// * [confirmPassword] 
@BuiltValue()
abstract class CreatePasswordRequest implements Built<CreatePasswordRequest, CreatePasswordRequestBuilder> {
  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'confirmPassword')
  String? get confirmPassword;

  CreatePasswordRequest._();

  factory CreatePasswordRequest([void updates(CreatePasswordRequestBuilder b)]) = _$CreatePasswordRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatePasswordRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreatePasswordRequest> get serializer => _$CreatePasswordRequestSerializer();
}

class _$CreatePasswordRequestSerializer implements PrimitiveSerializer<CreatePasswordRequest> {
  @override
  final Iterable<Type> types = const [CreatePasswordRequest, _$CreatePasswordRequest];

  @override
  final String wireName = r'CreatePasswordRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreatePasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.confirmPassword != null) {
      yield r'confirmPassword';
      yield serializers.serialize(
        object.confirmPassword,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreatePasswordRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreatePasswordRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'confirmPassword':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.confirmPassword = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreatePasswordRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatePasswordRequestBuilder();
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


