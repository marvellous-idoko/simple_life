//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'buy_motor_policy.g.dart';

/// BuyMotorPolicy
///
/// Properties:
/// * [buyId] 
/// * [motorId] 
/// * [customerId] 
/// * [motorValue] 
/// * [userName] 
@BuiltValue()
abstract class BuyMotorPolicy implements Built<BuyMotorPolicy, BuyMotorPolicyBuilder> {
  @BuiltValueField(wireName: r'buyId')
  String? get buyId;

  @BuiltValueField(wireName: r'motorId')
  String? get motorId;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'motorValue')
  num? get motorValue;

  @BuiltValueField(wireName: r'userName')
  String? get userName;

  BuyMotorPolicy._();

  factory BuyMotorPolicy([void updates(BuyMotorPolicyBuilder b)]) = _$BuyMotorPolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BuyMotorPolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BuyMotorPolicy> get serializer => _$BuyMotorPolicySerializer();
}

class _$BuyMotorPolicySerializer implements PrimitiveSerializer<BuyMotorPolicy> {
  @override
  final Iterable<Type> types = const [BuyMotorPolicy, _$BuyMotorPolicy];

  @override
  final String wireName = r'BuyMotorPolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BuyMotorPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.buyId != null) {
      yield r'buyId';
      yield serializers.serialize(
        object.buyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.motorId != null) {
      yield r'motorId';
      yield serializers.serialize(
        object.motorId,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.motorValue != null) {
      yield r'motorValue';
      yield serializers.serialize(
        object.motorValue,
        specifiedType: const FullType(num),
      );
    }
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BuyMotorPolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BuyMotorPolicyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.buyId = valueDes;
          break;
        case r'motorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.motorId = valueDes;
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'motorValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.motorValue = valueDes;
          break;
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BuyMotorPolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BuyMotorPolicyBuilder();
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


