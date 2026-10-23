//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/customer_id_verification_data.dart';
import 'package:openapi/src/model/customer_id_verification_error.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_id_verification.g.dart';

/// CustomerIDVerification
///
/// Properties:
/// * [customerId] 
/// * [date] 
/// * [documentNumber] 
/// * [data] 
/// * [error] 
@BuiltValue()
abstract class CustomerIDVerification implements Built<CustomerIDVerification, CustomerIDVerificationBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'documentNumber')
  String? get documentNumber;

  @BuiltValueField(wireName: r'data')
  CustomerIDVerificationData? get data;

  @BuiltValueField(wireName: r'error')
  CustomerIDVerificationError? get error;

  CustomerIDVerification._();

  factory CustomerIDVerification([void updates(CustomerIDVerificationBuilder b)]) = _$CustomerIDVerification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerIDVerificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerIDVerification> get serializer => _$CustomerIDVerificationSerializer();
}

class _$CustomerIDVerificationSerializer implements PrimitiveSerializer<CustomerIDVerification> {
  @override
  final Iterable<Type> types = const [CustomerIDVerification, _$CustomerIDVerification];

  @override
  final String wireName = r'CustomerIDVerification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerIDVerification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.documentNumber != null) {
      yield r'documentNumber';
      yield serializers.serialize(
        object.documentNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(CustomerIDVerificationData),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(CustomerIDVerificationError),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerIDVerification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerIDVerificationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'documentNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentNumber = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerIDVerificationData),
          ) as CustomerIDVerificationData?;
          if (valueDes == null) continue;
          result.data.replace(valueDes);
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerIDVerificationError),
          ) as CustomerIDVerificationError?;
          if (valueDes == null) continue;
          result.error.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerIDVerification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerIDVerificationBuilder();
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


