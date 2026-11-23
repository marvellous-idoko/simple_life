//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pay_for_tenant_protect_plus_document200_response.g.dart';

/// PayForTenantProtectPlusDocument200Response
///
/// Properties:
/// * [payUrl] 
@BuiltValue()
abstract class PayForTenantProtectPlusDocument200Response implements Built<PayForTenantProtectPlusDocument200Response, PayForTenantProtectPlusDocument200ResponseBuilder> {
  @BuiltValueField(wireName: r'payUrl')
  String? get payUrl;

  PayForTenantProtectPlusDocument200Response._();

  factory PayForTenantProtectPlusDocument200Response([void updates(PayForTenantProtectPlusDocument200ResponseBuilder b)]) = _$PayForTenantProtectPlusDocument200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayForTenantProtectPlusDocument200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayForTenantProtectPlusDocument200Response> get serializer => _$PayForTenantProtectPlusDocument200ResponseSerializer();
}

class _$PayForTenantProtectPlusDocument200ResponseSerializer implements PrimitiveSerializer<PayForTenantProtectPlusDocument200Response> {
  @override
  final Iterable<Type> types = const [PayForTenantProtectPlusDocument200Response, _$PayForTenantProtectPlusDocument200Response];

  @override
  final String wireName = r'PayForTenantProtectPlusDocument200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayForTenantProtectPlusDocument200Response object, {
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
    PayForTenantProtectPlusDocument200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PayForTenantProtectPlusDocument200ResponseBuilder result,
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
  PayForTenantProtectPlusDocument200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayForTenantProtectPlusDocument200ResponseBuilder();
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


