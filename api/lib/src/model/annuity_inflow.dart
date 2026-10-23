//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annuity_inflow.g.dart';

/// AnnuityInflow
///
/// Properties:
/// * [annuityPremium] 
/// * [rsaPin] 
/// * [date] 
/// * [beneficiary] 
/// * [employerName] 
/// * [pfaName] 
/// * [inflowId] 
@BuiltValue()
abstract class AnnuityInflow implements Built<AnnuityInflow, AnnuityInflowBuilder> {
  @BuiltValueField(wireName: r'annuityPremium')
  num? get annuityPremium;

  @BuiltValueField(wireName: r'rsaPin')
  String? get rsaPin;

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'beneficiary')
  String? get beneficiary;

  @BuiltValueField(wireName: r'employerName')
  String? get employerName;

  @BuiltValueField(wireName: r'pfaName')
  String? get pfaName;

  @BuiltValueField(wireName: r'inflowId')
  String? get inflowId;

  AnnuityInflow._();

  factory AnnuityInflow([void updates(AnnuityInflowBuilder b)]) = _$AnnuityInflow;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnuityInflowBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnuityInflow> get serializer => _$AnnuityInflowSerializer();
}

class _$AnnuityInflowSerializer implements PrimitiveSerializer<AnnuityInflow> {
  @override
  final Iterable<Type> types = const [AnnuityInflow, _$AnnuityInflow];

  @override
  final String wireName = r'AnnuityInflow';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnuityInflow object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.annuityPremium != null) {
      yield r'annuityPremium';
      yield serializers.serialize(
        object.annuityPremium,
        specifiedType: const FullType(num),
      );
    }
    if (object.rsaPin != null) {
      yield r'rsaPin';
      yield serializers.serialize(
        object.rsaPin,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(String),
      );
    }
    if (object.beneficiary != null) {
      yield r'beneficiary';
      yield serializers.serialize(
        object.beneficiary,
        specifiedType: const FullType(String),
      );
    }
    if (object.employerName != null) {
      yield r'employerName';
      yield serializers.serialize(
        object.employerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.pfaName != null) {
      yield r'pfaName';
      yield serializers.serialize(
        object.pfaName,
        specifiedType: const FullType(String),
      );
    }
    if (object.inflowId != null) {
      yield r'inflowId';
      yield serializers.serialize(
        object.inflowId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnuityInflow object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnnuityInflowBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'annuityPremium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.annuityPremium = valueDes;
          break;
        case r'rsaPin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rsaPin = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'beneficiary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.beneficiary = valueDes;
          break;
        case r'employerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.employerName = valueDes;
          break;
        case r'pfaName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pfaName = valueDes;
          break;
        case r'inflowId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.inflowId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnuityInflow deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnuityInflowBuilder();
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


