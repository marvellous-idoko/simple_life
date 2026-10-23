//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'discount_rate.g.dart';

/// DiscountRate
///
/// Properties:
/// * [rateId] 
/// * [annualRatePercentage] 
/// * [dateOfRate] 
/// * [productId] 
@BuiltValue()
abstract class DiscountRate implements Built<DiscountRate, DiscountRateBuilder> {
  @BuiltValueField(wireName: r'rateId')
  String? get rateId;

  @BuiltValueField(wireName: r'annualRatePercentage')
  num? get annualRatePercentage;

  @BuiltValueField(wireName: r'dateOfRate')
  String? get dateOfRate;

  @BuiltValueField(wireName: r'productId')
  num? get productId;

  DiscountRate._();

  factory DiscountRate([void updates(DiscountRateBuilder b)]) = _$DiscountRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DiscountRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DiscountRate> get serializer => _$DiscountRateSerializer();
}

class _$DiscountRateSerializer implements PrimitiveSerializer<DiscountRate> {
  @override
  final Iterable<Type> types = const [DiscountRate, _$DiscountRate];

  @override
  final String wireName = r'DiscountRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DiscountRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rateId != null) {
      yield r'rateId';
      yield serializers.serialize(
        object.rateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.annualRatePercentage != null) {
      yield r'annualRatePercentage';
      yield serializers.serialize(
        object.annualRatePercentage,
        specifiedType: const FullType(num),
      );
    }
    if (object.dateOfRate != null) {
      yield r'dateOfRate';
      yield serializers.serialize(
        object.dateOfRate,
        specifiedType: const FullType(String),
      );
    }
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DiscountRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DiscountRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rateId = valueDes;
          break;
        case r'annualRatePercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.annualRatePercentage = valueDes;
          break;
        case r'dateOfRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfRate = valueDes;
          break;
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DiscountRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiscountRateBuilder();
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


