//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'customer_id.g.dart';

/// CustomerId
///
/// Properties:
/// * [customerId] 
/// * [referralId] 
/// * [agentPhone] 
@BuiltValue()
abstract class CustomerId implements Built<CustomerId, CustomerIdBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'referralId')
  String? get referralId;

  @BuiltValueField(wireName: r'agentPhone')
  String? get agentPhone;

  CustomerId._();

  factory CustomerId([void updates(CustomerIdBuilder b)]) = _$CustomerId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomerIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomerId> get serializer => _$CustomerIdSerializer();
}

class _$CustomerIdSerializer implements PrimitiveSerializer<CustomerId> {
  @override
  final Iterable<Type> types = const [CustomerId, _$CustomerId];

  @override
  final String wireName = r'CustomerId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomerId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.referralId != null) {
      yield r'referralId';
      yield serializers.serialize(
        object.referralId,
        specifiedType: const FullType(String),
      );
    }
    if (object.agentPhone != null) {
      yield r'agentPhone';
      yield serializers.serialize(
        object.agentPhone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomerId object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomerIdBuilder result,
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
        case r'referralId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referralId = valueDes;
          break;
        case r'agentPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentPhone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomerId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomerIdBuilder();
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


