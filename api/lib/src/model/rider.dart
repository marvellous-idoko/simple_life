//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rider.g.dart';

/// Rider
///
/// Properties:
/// * [personId] 
/// * [riderCode] 
/// * [sumAssured] 
/// * [term] 
/// * [frequency] 
@BuiltValue()
abstract class Rider implements Built<Rider, RiderBuilder> {
  @BuiltValueField(wireName: r'personId')
  String? get personId;

  @BuiltValueField(wireName: r'riderCode')
  String? get riderCode;

  @BuiltValueField(wireName: r'sumAssured')
  num? get sumAssured;

  @BuiltValueField(wireName: r'term')
  num? get term;

  @BuiltValueField(wireName: r'frequency')
  RiderFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  biannual,  annual,  single,  };

  Rider._();

  factory Rider([void updates(RiderBuilder b)]) = _$Rider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RiderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Rider> get serializer => _$RiderSerializer();
}

class _$RiderSerializer implements PrimitiveSerializer<Rider> {
  @override
  final Iterable<Type> types = const [Rider, _$Rider];

  @override
  final String wireName = r'Rider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Rider object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.personId != null) {
      yield r'personId';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType(String),
      );
    }
    if (object.riderCode != null) {
      yield r'riderCode';
      yield serializers.serialize(
        object.riderCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.sumAssured != null) {
      yield r'sumAssured';
      yield serializers.serialize(
        object.sumAssured,
        specifiedType: const FullType(num),
      );
    }
    if (object.term != null) {
      yield r'term';
      yield serializers.serialize(
        object.term,
        specifiedType: const FullType(num),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(RiderFrequencyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Rider object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RiderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.personId = valueDes;
          break;
        case r'riderCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.riderCode = valueDes;
          break;
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.sumAssured = valueDes;
          break;
        case r'term':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.term = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RiderFrequencyEnum),
          ) as RiderFrequencyEnum?;
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
  Rider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RiderBuilder();
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


class RiderFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const RiderFrequencyEnum monthly = _$riderFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const RiderFrequencyEnum quarterly = _$riderFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const RiderFrequencyEnum biannual = _$riderFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const RiderFrequencyEnum annual = _$riderFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const RiderFrequencyEnum single = _$riderFrequencyEnum_single;

  static Serializer<RiderFrequencyEnum> get serializer => _$riderFrequencyEnumSerializer;

  const RiderFrequencyEnum._(String name): super(name);

  static BuiltSet<RiderFrequencyEnum> get values => _$riderFrequencyEnumValues;
  static RiderFrequencyEnum valueOf(String name) => _$riderFrequencyEnumValueOf(name);
}

