//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'interest_rate.g.dart';

/// InterestRate
///
/// Properties:
/// * [rateId] 
/// * [annualRatePercentage] 
/// * [premiumThreshold] 
/// * [startDate] 
/// * [productId] 
/// * [frequency] 
@BuiltValue()
abstract class InterestRate implements Built<InterestRate, InterestRateBuilder> {
  @BuiltValueField(wireName: r'rateId')
  String? get rateId;

  @BuiltValueField(wireName: r'annualRatePercentage')
  num? get annualRatePercentage;

  @BuiltValueField(wireName: r'premiumThreshold')
  num? get premiumThreshold;

  @BuiltValueField(wireName: r'startDate')
  String? get startDate;

  @BuiltValueField(wireName: r'productId')
  num? get productId;

  @BuiltValueField(wireName: r'frequency')
  InterestRateFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  annual,  biannual,  single,  all,  };

  InterestRate._();

  factory InterestRate([void updates(InterestRateBuilder b)]) = _$InterestRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InterestRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InterestRate> get serializer => _$InterestRateSerializer();
}

class _$InterestRateSerializer implements PrimitiveSerializer<InterestRate> {
  @override
  final Iterable<Type> types = const [InterestRate, _$InterestRate];

  @override
  final String wireName = r'InterestRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InterestRate object, {
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
    if (object.premiumThreshold != null) {
      yield r'premiumThreshold';
      yield serializers.serialize(
        object.premiumThreshold,
        specifiedType: const FullType(num),
      );
    }
    if (object.startDate != null) {
      yield r'startDate';
      yield serializers.serialize(
        object.startDate,
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
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(InterestRateFrequencyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InterestRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InterestRateBuilder result,
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
        case r'premiumThreshold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premiumThreshold = valueDes;
          break;
        case r'startDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.startDate = valueDes;
          break;
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(InterestRateFrequencyEnum),
          ) as InterestRateFrequencyEnum?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  InterestRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InterestRateBuilder();
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


class InterestRateFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const InterestRateFrequencyEnum monthly = _$interestRateFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const InterestRateFrequencyEnum quarterly = _$interestRateFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'annual')
  static const InterestRateFrequencyEnum annual = _$interestRateFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const InterestRateFrequencyEnum biannual = _$interestRateFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'single')
  static const InterestRateFrequencyEnum single = _$interestRateFrequencyEnum_single;
  @BuiltValueEnumConst(wireName: r'all')
  static const InterestRateFrequencyEnum all = _$interestRateFrequencyEnum_all;

  static Serializer<InterestRateFrequencyEnum> get serializer => _$interestRateFrequencyEnumSerializer;

  const InterestRateFrequencyEnum._(String name): super(name);

  static BuiltSet<InterestRateFrequencyEnum> get values => _$interestRateFrequencyEnumValues;
  static InterestRateFrequencyEnum valueOf(String name) => _$interestRateFrequencyEnumValueOf(name);
}

