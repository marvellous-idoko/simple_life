//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'surrender_rate.g.dart';

/// SurrenderRate
///
/// Properties:
/// * [rateId] 
/// * [ratePercentage] 
/// * [monthOfSurrender] 
/// * [policyTerm] 
/// * [dateOfRate] 
/// * [productId] 
@BuiltValue()
abstract class SurrenderRate implements Built<SurrenderRate, SurrenderRateBuilder> {
  @BuiltValueField(wireName: r'rateId')
  String? get rateId;

  @BuiltValueField(wireName: r'ratePercentage')
  num? get ratePercentage;

  @BuiltValueField(wireName: r'monthOfSurrender')
  num? get monthOfSurrender;

  @BuiltValueField(wireName: r'policyTerm')
  num? get policyTerm;

  @BuiltValueField(wireName: r'dateOfRate')
  String? get dateOfRate;

  @BuiltValueField(wireName: r'productId')
  num? get productId;

  SurrenderRate._();

  factory SurrenderRate([void updates(SurrenderRateBuilder b)]) = _$SurrenderRate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SurrenderRateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SurrenderRate> get serializer => _$SurrenderRateSerializer();
}

class _$SurrenderRateSerializer implements PrimitiveSerializer<SurrenderRate> {
  @override
  final Iterable<Type> types = const [SurrenderRate, _$SurrenderRate];

  @override
  final String wireName = r'SurrenderRate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SurrenderRate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rateId != null) {
      yield r'rateId';
      yield serializers.serialize(
        object.rateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.ratePercentage != null) {
      yield r'ratePercentage';
      yield serializers.serialize(
        object.ratePercentage,
        specifiedType: const FullType(num),
      );
    }
    if (object.monthOfSurrender != null) {
      yield r'monthOfSurrender';
      yield serializers.serialize(
        object.monthOfSurrender,
        specifiedType: const FullType(num),
      );
    }
    if (object.policyTerm != null) {
      yield r'policyTerm';
      yield serializers.serialize(
        object.policyTerm,
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
    SurrenderRate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SurrenderRateBuilder result,
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
        case r'ratePercentage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.ratePercentage = valueDes;
          break;
        case r'monthOfSurrender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.monthOfSurrender = valueDes;
          break;
        case r'policyTerm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.policyTerm = valueDes;
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
  SurrenderRate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SurrenderRateBuilder();
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


