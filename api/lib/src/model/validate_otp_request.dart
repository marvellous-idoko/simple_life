//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_otp_request.g.dart';

/// ValidateOTPRequest
///
/// Properties:
/// * [identity] 
/// * [otp] 
@BuiltValue()
abstract class ValidateOTPRequest implements Built<ValidateOTPRequest, ValidateOTPRequestBuilder> {
  @BuiltValueField(wireName: r'identity')
  String? get identity;

  @BuiltValueField(wireName: r'otp')
  String? get otp;

  ValidateOTPRequest._();

  factory ValidateOTPRequest([void updates(ValidateOTPRequestBuilder b)]) = _$ValidateOTPRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateOTPRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateOTPRequest> get serializer => _$ValidateOTPRequestSerializer();
}

class _$ValidateOTPRequestSerializer implements PrimitiveSerializer<ValidateOTPRequest> {
  @override
  final Iterable<Type> types = const [ValidateOTPRequest, _$ValidateOTPRequest];

  @override
  final String wireName = r'ValidateOTPRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateOTPRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identity != null) {
      yield r'identity';
      yield serializers.serialize(
        object.identity,
        specifiedType: const FullType(String),
      );
    }
    if (object.otp != null) {
      yield r'otp';
      yield serializers.serialize(
        object.otp,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateOTPRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateOTPRequestBuilder result,
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
        case r'otp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.otp = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateOTPRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateOTPRequestBuilder();
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


