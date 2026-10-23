//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commission_rate.g.dart';

/// CommissionRate
///
/// Properties:
/// * [rateId] 
/// * [premiumYearFrom] 
/// * [premiumYearTo] 
/// * [policyDurationFrom] 
/// * [policyDurationTo] 
/// * [frequency] 
/// * [ratePercentage] 
/// * [productId] 
@BuiltValue()
abstract class CommissionRate implements Built<CommissionRate, CommissionRateBuilder> {
  @BuiltValueField(wireName: r'rateId')
  String? get rateId;

  @BuiltValueField(wireName: r'premiumYearFrom')
  num? get premiumYearFrom;

  @BuiltValueField(wireName: r'premiumYearTo')
  num? get premiumYearTo;

  @BuiltValueField(wireName: r'policyDurationFrom')
  num? get policyDurationFrom;

  @BuiltValueField(wireName: r'policyDurationTo')
  num? get policyDurationTo;

  @BuiltValueField(wireName: r'frequency')
  CommissionRateFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  annual,  biannual,  single,  all,  };

  @BuiltValueField(wireName: r'ratePercentage')
  num? get ratePercentage;

  @BuiltValueField(wireName: r'productId')
  num? get productId;

  CommissionRate._();

  factory CommissionRate([void updates(CommissionRateBuilder b)]) = _$CommissionRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CommissionRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CommissionRate> get serializer => _$CommissionRateSerializer();
}

class _$CommissionRateSerializer implements PrimitiveSerializer<CommissionRate> {
  @override
  final Iterable<Type> types = const [CommissionRate, _$CommissionRate];

  @override
  final String wireName = r'CommissionRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CommissionRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rateId != null) {
      yield r'rateId';
      yield serializers.serialize(
        object.rateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.premiumYearFrom != null) {
      yield r'premiumYearFrom';
      yield serializers.serialize(
        object.premiumYearFrom,
        specifiedType: const FullType(num),
      );
    }
    if (object.premiumYearTo != null) {
      yield r'premiumYearTo';
      yield serializers.serialize(
        object.premiumYearTo,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyDurationFrom != null) {
      yield r'policyDurationFrom';
      yield serializers.serialize(
        object.policyDurationFrom,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyDurationTo != null) {
      yield r'policyDurationTo';
      yield serializers.serialize(
        object.policyDurationTo,
        specifiedType: const FullType(num),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(CommissionRateFrequencyEnum),
      );
    }
    if (object.ratePercentage != null) {
      yield r'ratePercentage';
      yield serializers.serialize(
        object.ratePercentage,
        specifiedType: const FullType(num),
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
    CommissionRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CommissionRateBuilder result,
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
        case r'premiumYearFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premiumYearFrom = valueDes;
          break;
        case r'premiumYearTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premiumYearTo = valueDes;
          break;
        case r'policyDurationFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.policyDurationFrom = valueDes;
          break;
        case r'policyDurationTo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.policyDurationTo = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CommissionRateFrequencyEnum),
          ) as CommissionRateFrequencyEnum?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
          break;
        case r'ratePercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratePercentage = valueDes;
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
  CommissionRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CommissionRateBuilder();
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


class CommissionRateFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const CommissionRateFrequencyEnum monthly = _$commissionRateFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const CommissionRateFrequencyEnum quarterly = _$commissionRateFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'annual')
  static const CommissionRateFrequencyEnum annual = _$commissionRateFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const CommissionRateFrequencyEnum biannual = _$commissionRateFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'single')
  static const CommissionRateFrequencyEnum single = _$commissionRateFrequencyEnum_single;
  @BuiltValueEnumConst(wireName: r'all')
  static const CommissionRateFrequencyEnum all = _$commissionRateFrequencyEnum_all;

  static Serializer<CommissionRateFrequencyEnum> get serializer => _$commissionRateFrequencyEnumSerializer;

  const CommissionRateFrequencyEnum._(String name): super(name);

  static BuiltSet<CommissionRateFrequencyEnum> get values => _$commissionRateFrequencyEnumValues;
  static CommissionRateFrequencyEnum valueOf(String name) => _$commissionRateFrequencyEnumValueOf(name);
}

