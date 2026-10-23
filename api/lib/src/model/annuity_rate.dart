//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annuity_rate.g.dart';

/// AnnuityRate
///
/// Properties:
/// * [age] 
/// * [guarantyPeriod] 
/// * [ratePerMillion] 
/// * [commission] 
/// * [dateOfRate] 
/// * [policyType] 
/// * [annuityRateType] 
@BuiltValue()
abstract class AnnuityRate implements Built<AnnuityRate, AnnuityRateBuilder> {
  @BuiltValueField(wireName: r'age')
  num? get age;

  @BuiltValueField(wireName: r'guarantyPeriod')
  num? get guarantyPeriod;

  @BuiltValueField(wireName: r'ratePerMillion')
  num? get ratePerMillion;

  @BuiltValueField(wireName: r'commission')
  num? get commission;

  @BuiltValueField(wireName: r'dateOfRate')
  String? get dateOfRate;

  @BuiltValueField(wireName: r'policyType')
  String? get policyType;

  @BuiltValueField(wireName: r'annuityRateType')
  String? get annuityRateType;

  AnnuityRate._();

  factory AnnuityRate([void updates(AnnuityRateBuilder b)]) = _$AnnuityRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnuityRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnuityRate> get serializer => _$AnnuityRateSerializer();
}

class _$AnnuityRateSerializer implements PrimitiveSerializer<AnnuityRate> {
  @override
  final Iterable<Type> types = const [AnnuityRate, _$AnnuityRate];

  @override
  final String wireName = r'AnnuityRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnuityRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.age != null) {
      yield r'age';
      yield serializers.serialize(
        object.age,
        specifiedType: const FullType(num),
      );
    }
    if (object.guarantyPeriod != null) {
      yield r'guarantyPeriod';
      yield serializers.serialize(
        object.guarantyPeriod,
        specifiedType: const FullType(num),
      );
    }
    if (object.ratePerMillion != null) {
      yield r'ratePerMillion';
      yield serializers.serialize(
        object.ratePerMillion,
        specifiedType: const FullType(num),
      );
    }
    if (object.commission != null) {
      yield r'commission';
      yield serializers.serialize(
        object.commission,
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
    if (object.policyType != null) {
      yield r'policyType';
      yield serializers.serialize(
        object.policyType,
        specifiedType: const FullType(String),
      );
    }
    if (object.annuityRateType != null) {
      yield r'annuityRateType';
      yield serializers.serialize(
        object.annuityRateType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnuityRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnnuityRateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'age':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.age = valueDes;
          break;
        case r'guarantyPeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.guarantyPeriod = valueDes;
          break;
        case r'ratePerMillion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratePerMillion = valueDes;
          break;
        case r'commission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.commission = valueDes;
          break;
        case r'dateOfRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfRate = valueDes;
          break;
        case r'policyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyType = valueDes;
          break;
        case r'annuityRateType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.annuityRateType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnuityRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnuityRateBuilder();
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


