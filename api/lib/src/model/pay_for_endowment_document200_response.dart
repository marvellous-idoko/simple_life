//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pay_for_endowment_document200_response.g.dart';

/// PayForEndowmentDocument200Response
///
/// Properties:
/// * [payUrl] 
@BuiltValue()
abstract class PayForEndowmentDocument200Response implements Built<PayForEndowmentDocument200Response, PayForEndowmentDocument200ResponseBuilder> {
  @BuiltValueField(wireName: r'payUrl')
  String? get payUrl;

  PayForEndowmentDocument200Response._();

  factory PayForEndowmentDocument200Response([void updates(PayForEndowmentDocument200ResponseBuilder b)]) = _$PayForEndowmentDocument200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayForEndowmentDocument200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayForEndowmentDocument200Response> get serializer => _$PayForEndowmentDocument200ResponseSerializer();
}

class _$PayForEndowmentDocument200ResponseSerializer implements PrimitiveSerializer<PayForEndowmentDocument200Response> {
  @override
  final Iterable<Type> types = const [PayForEndowmentDocument200Response, _$PayForEndowmentDocument200Response];

  @override
  final String wireName = r'PayForEndowmentDocument200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayForEndowmentDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payUrl != null) {
      yield r'payUrl';
      yield serializers.serialize(
        object.payUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayForEndowmentDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayForEndowmentDocument200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.payUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayForEndowmentDocument200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayForEndowmentDocument200ResponseBuilder();
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


