//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pay_for_save_document200_response.g.dart';

/// PayForSaveDocument200Response
///
/// Properties:
/// * [payUrl] 
@BuiltValue()
abstract class PayForSaveDocument200Response implements Built<PayForSaveDocument200Response, PayForSaveDocument200ResponseBuilder> {
  @BuiltValueField(wireName: r'payUrl')
  String? get payUrl;

  PayForSaveDocument200Response._();

  factory PayForSaveDocument200Response([void updates(PayForSaveDocument200ResponseBuilder b)]) = _$PayForSaveDocument200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayForSaveDocument200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayForSaveDocument200Response> get serializer => _$PayForSaveDocument200ResponseSerializer();
}

class _$PayForSaveDocument200ResponseSerializer implements PrimitiveSerializer<PayForSaveDocument200Response> {
  @override
  final Iterable<Type> types = const [PayForSaveDocument200Response, _$PayForSaveDocument200Response];

  @override
  final String wireName = r'PayForSaveDocument200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayForSaveDocument200Response object, {
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
    PayForSaveDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayForSaveDocument200ResponseBuilder result,
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
  PayForSaveDocument200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayForSaveDocument200ResponseBuilder();
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


