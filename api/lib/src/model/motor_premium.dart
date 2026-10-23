//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'motor_premium.g.dart';

/// MotorPremium
///
/// Properties:
/// * [premium] - Premium to pay
/// * [motorType] - Type of Vehicle as in Saloon, SUV, Light Trucks, Heavy Duty
@BuiltValue()
abstract class MotorPremium implements Built<MotorPremium, MotorPremiumBuilder> {
  /// Premium to pay
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  /// Type of Vehicle as in Saloon, SUV, Light Trucks, Heavy Duty
  @BuiltValueField(wireName: r'motorType')
  String? get motorType;

  MotorPremium._();

  factory MotorPremium([void updates(MotorPremiumBuilder b)]) = _$MotorPremium;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MotorPremiumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MotorPremium> get serializer => _$MotorPremiumSerializer();
}

class _$MotorPremiumSerializer implements PrimitiveSerializer<MotorPremium> {
  @override
  final Iterable<Type> types = const [MotorPremium, _$MotorPremium];

  @override
  final String wireName = r'MotorPremium';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MotorPremium object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.motorType != null) {
      yield r'motorType';
      yield serializers.serialize(
        object.motorType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MotorPremium object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MotorPremiumBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'motorType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.motorType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MotorPremium deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MotorPremiumBuilder();
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


