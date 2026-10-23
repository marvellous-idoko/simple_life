//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rider_response.g.dart';

/// RiderResponse
///
/// Properties:
/// * [riderCode] 
/// * [sumAssured] 
/// * [term] 
/// * [frequency] 
@BuiltValue()
abstract class RiderResponse implements Built<RiderResponse, RiderResponseBuilder> {
  @BuiltValueField(wireName: r'riderCode')
  String? get riderCode;

  @BuiltValueField(wireName: r'sumAssured')
  num? get sumAssured;

  @BuiltValueField(wireName: r'term')
  num? get term;

  @BuiltValueField(wireName: r'frequency')
  RiderResponseFrequencyEnum? get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  biannual,  annual,  single,  };

  RiderResponse._();

  factory RiderResponse([void updates(RiderResponseBuilder b)]) = _$RiderResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RiderResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RiderResponse> get serializer => _$RiderResponseSerializer();
}

class _$RiderResponseSerializer implements PrimitiveSerializer<RiderResponse> {
  @override
  final Iterable<Type> types = const [RiderResponse, _$RiderResponse];

  @override
  final String wireName = r'RiderResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RiderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(RiderResponseFrequencyEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RiderResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RiderResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType.nullable(RiderResponseFrequencyEnum),
          ) as RiderResponseFrequencyEnum?;
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
  RiderResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RiderResponseBuilder();
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


class RiderResponseFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const RiderResponseFrequencyEnum monthly = _$riderResponseFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const RiderResponseFrequencyEnum quarterly = _$riderResponseFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const RiderResponseFrequencyEnum biannual = _$riderResponseFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const RiderResponseFrequencyEnum annual = _$riderResponseFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const RiderResponseFrequencyEnum single = _$riderResponseFrequencyEnum_single;

  static Serializer<RiderResponseFrequencyEnum> get serializer => _$riderResponseFrequencyEnumSerializer;

  const RiderResponseFrequencyEnum._(String name): super(name);

  static BuiltSet<RiderResponseFrequencyEnum> get values => _$riderResponseFrequencyEnumValues;
  static RiderResponseFrequencyEnum valueOf(String name) => _$riderResponseFrequencyEnumValueOf(name);
}

