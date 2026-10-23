//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'reset_otp_request.g.dart';

/// ResetOtpRequest
///
/// Properties:
/// * [identity] 
@BuiltValue()
abstract class ResetOtpRequest implements Built<ResetOtpRequest, ResetOtpRequestBuilder> {
  @BuiltValueField(wireName: r'identity')
  String? get identity;

  ResetOtpRequest._();

  factory ResetOtpRequest([void updates(ResetOtpRequestBuilder b)]) = _$ResetOtpRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResetOtpRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResetOtpRequest> get serializer => _$ResetOtpRequestSerializer();
}

class _$ResetOtpRequestSerializer implements PrimitiveSerializer<ResetOtpRequest> {
  @override
  final Iterable<Type> types = const [ResetOtpRequest, _$ResetOtpRequest];

  @override
  final String wireName = r'ResetOtpRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResetOtpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.identity != null) {
      yield r'identity';
      yield serializers.serialize(
        object.identity,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResetOtpRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResetOtpRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ResetOtpRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResetOtpRequestBuilder();
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


