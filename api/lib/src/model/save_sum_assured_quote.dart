//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'save_sum_assured_quote.g.dart';

/// SaveSumAssuredQuote
///
/// Properties:
/// * [premium] 
/// * [contribution] 
/// * [frequency] 
@BuiltValue()
abstract class SaveSumAssuredQuote implements Built<SaveSumAssuredQuote, SaveSumAssuredQuoteBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'contribution')
  num? get contribution;

  @BuiltValueField(wireName: r'frequency')
  SaveSumAssuredQuoteFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  biannual,  annual,  single,  };

  SaveSumAssuredQuote._();

  factory SaveSumAssuredQuote([void updates(SaveSumAssuredQuoteBuilder b)]) = _$SaveSumAssuredQuote;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SaveSumAssuredQuoteBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SaveSumAssuredQuote> get serializer => _$SaveSumAssuredQuoteSerializer();
}

class _$SaveSumAssuredQuoteSerializer implements PrimitiveSerializer<SaveSumAssuredQuote> {
  @override
  final Iterable<Type> types = const [SaveSumAssuredQuote, _$SaveSumAssuredQuote];

  @override
  final String wireName = r'SaveSumAssuredQuote';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SaveSumAssuredQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.contribution != null) {
      yield r'contribution';
      yield serializers.serialize(
        object.contribution,
        specifiedType: const FullType(num),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(SaveSumAssuredQuoteFrequencyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SaveSumAssuredQuote object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SaveSumAssuredQuoteBuilder result,
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
        case r'contribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.contribution = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SaveSumAssuredQuoteFrequencyEnum),
          ) as SaveSumAssuredQuoteFrequencyEnum?;
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
  SaveSumAssuredQuote deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SaveSumAssuredQuoteBuilder();
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


class SaveSumAssuredQuoteFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const SaveSumAssuredQuoteFrequencyEnum monthly = _$saveSumAssuredQuoteFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const SaveSumAssuredQuoteFrequencyEnum quarterly = _$saveSumAssuredQuoteFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const SaveSumAssuredQuoteFrequencyEnum biannual = _$saveSumAssuredQuoteFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const SaveSumAssuredQuoteFrequencyEnum annual = _$saveSumAssuredQuoteFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const SaveSumAssuredQuoteFrequencyEnum single = _$saveSumAssuredQuoteFrequencyEnum_single;

  static Serializer<SaveSumAssuredQuoteFrequencyEnum> get serializer => _$saveSumAssuredQuoteFrequencyEnumSerializer;

  const SaveSumAssuredQuoteFrequencyEnum._(String name): super(name);

  static BuiltSet<SaveSumAssuredQuoteFrequencyEnum> get values => _$saveSumAssuredQuoteFrequencyEnumValues;
  static SaveSumAssuredQuoteFrequencyEnum valueOf(String name) => _$saveSumAssuredQuoteFrequencyEnumValueOf(name);
}

