//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_id_verification_error.g.dart';

/// CustomerIDVerificationError
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class CustomerIDVerificationError implements Built<CustomerIDVerificationError, CustomerIDVerificationErrorBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  CustomerIDVerificationError._();

  factory CustomerIDVerificationError([void updates(CustomerIDVerificationErrorBuilder b)]) = _$CustomerIDVerificationError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerIDVerificationErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerIDVerificationError> get serializer => _$CustomerIDVerificationErrorSerializer();
}

class _$CustomerIDVerificationErrorSerializer implements PrimitiveSerializer<CustomerIDVerificationError> {
  @override
  final Iterable<Type> types = const [CustomerIDVerificationError, _$CustomerIDVerificationError];

  @override
  final String wireName = r'CustomerIDVerificationError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerIDVerificationError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerIDVerificationError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerIDVerificationErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerIDVerificationError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerIDVerificationErrorBuilder();
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


