//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'log_user_in_request.g.dart';

/// LogUserInRequest
///
/// Properties:
/// * [identity] 
/// * [password] 
@BuiltValue()
abstract class LogUserInRequest implements Built<LogUserInRequest, LogUserInRequestBuilder> {
  @BuiltValueField(wireName: r'identity')
  String? get identity;

  @BuiltValueField(wireName: r'password')
  String? get password;

  LogUserInRequest._();

  factory LogUserInRequest([void updates(LogUserInRequestBuilder b)]) = _$LogUserInRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LogUserInRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LogUserInRequest> get serializer => _$LogUserInRequestSerializer();
}

class _$LogUserInRequestSerializer implements PrimitiveSerializer<LogUserInRequest> {
  @override
  final Iterable<Type> types = const [LogUserInRequest, _$LogUserInRequest];

  @override
  final String wireName = r'LogUserInRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LogUserInRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identity != null) {
      yield r'identity';
      yield serializers.serialize(
        object.identity,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LogUserInRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LogUserInRequestBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LogUserInRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LogUserInRequestBuilder();
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


