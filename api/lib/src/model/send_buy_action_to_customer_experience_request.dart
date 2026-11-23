//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'send_buy_action_to_customer_experience_request.g.dart';

/// SendBuyActionToCustomerExperienceRequest
///
/// Properties:
/// * [policyInfo] 
/// * [inquiryType] 
@BuiltValue()
abstract class SendBuyActionToCustomerExperienceRequest implements Built<SendBuyActionToCustomerExperienceRequest, SendBuyActionToCustomerExperienceRequestBuilder> {
  @BuiltValueField(wireName: r'policyInfo')
  String? get policyInfo;

  @BuiltValueField(wireName: r'inquiryType')
  String? get inquiryType;

  SendBuyActionToCustomerExperienceRequest._();

  factory SendBuyActionToCustomerExperienceRequest([void updates(SendBuyActionToCustomerExperienceRequestBuilder b)]) = _$SendBuyActionToCustomerExperienceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendBuyActionToCustomerExperienceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendBuyActionToCustomerExperienceRequest> get serializer => _$SendBuyActionToCustomerExperienceRequestSerializer();
}

class _$SendBuyActionToCustomerExperienceRequestSerializer implements PrimitiveSerializer<SendBuyActionToCustomerExperienceRequest> {
  @override
  final Iterable<Type> types = const [SendBuyActionToCustomerExperienceRequest, _$SendBuyActionToCustomerExperienceRequest];

  @override
  final String wireName = r'SendBuyActionToCustomerExperienceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendBuyActionToCustomerExperienceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.policyInfo != null) {
      yield r'policyInfo';
      yield serializers.serialize(
        object.policyInfo,
        specifiedType: const FullType(String),
      );
    }
    if (object.inquiryType != null) {
      yield r'inquiryType';
      yield serializers.serialize(
        object.inquiryType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendBuyActionToCustomerExperienceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendBuyActionToCustomerExperienceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'policyInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyInfo = valueDes;
          break;
        case r'inquiryType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inquiryType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SendBuyActionToCustomerExperienceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendBuyActionToCustomerExperienceRequestBuilder();
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


