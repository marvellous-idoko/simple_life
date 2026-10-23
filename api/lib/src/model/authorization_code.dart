//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authorization_code.g.dart';

/// AuthorizationCode
///
/// Properties:
/// * [code] 
@BuiltValue()
abstract class AuthorizationCode implements Built<AuthorizationCode, AuthorizationCodeBuilder> {
  @BuiltValueField(wireName: r'code')
  String? get code;

  AuthorizationCode._();

  factory AuthorizationCode([void updates(AuthorizationCodeBuilder b)]) = _$AuthorizationCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthorizationCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthorizationCode> get serializer => _$AuthorizationCodeSerializer();
}

class _$AuthorizationCodeSerializer implements PrimitiveSerializer<AuthorizationCode> {
  @override
  final Iterable<Type> types = const [AuthorizationCode, _$AuthorizationCode];

  @override
  final String wireName = r'AuthorizationCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthorizationCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthorizationCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthorizationCodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.code = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthorizationCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthorizationCodeBuilder();
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


