//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'life_premium.g.dart';

/// LifePremium
///
/// Properties:
/// * [premium] 
/// * [frequency] 
@BuiltValue()
abstract class LifePremium implements Built<LifePremium, LifePremiumBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'frequency')
  LifePremiumFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  biannual,  annual,  single,  };

  LifePremium._();

  factory LifePremium([void updates(LifePremiumBuilder b)]) = _$LifePremium;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LifePremiumBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LifePremium> get serializer => _$LifePremiumSerializer();
}

class _$LifePremiumSerializer implements PrimitiveSerializer<LifePremium> {
  @override
  final Iterable<Type> types = const [LifePremium, _$LifePremium];

  @override
  final String wireName = r'LifePremium';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LifePremium object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(LifePremiumFrequencyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LifePremium object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LifePremiumBuilder result,
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
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(LifePremiumFrequencyEnum),
          ) as LifePremiumFrequencyEnum?;
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
  LifePremium deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LifePremiumBuilder();
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


class LifePremiumFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const LifePremiumFrequencyEnum monthly = _$lifePremiumFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const LifePremiumFrequencyEnum quarterly = _$lifePremiumFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const LifePremiumFrequencyEnum biannual = _$lifePremiumFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const LifePremiumFrequencyEnum annual = _$lifePremiumFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const LifePremiumFrequencyEnum single = _$lifePremiumFrequencyEnum_single;

  static Serializer<LifePremiumFrequencyEnum> get serializer => _$lifePremiumFrequencyEnumSerializer;

  const LifePremiumFrequencyEnum._(String name): super(name);

  static BuiltSet<LifePremiumFrequencyEnum> get values => _$lifePremiumFrequencyEnumValues;
  static LifePremiumFrequencyEnum valueOf(String name) => _$lifePremiumFrequencyEnumValueOf(name);
}

