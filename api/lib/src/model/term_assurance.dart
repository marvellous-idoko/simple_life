//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/death_cover.dart';
import 'package:openapi/src/model/beneficiary_share.dart';
import 'package:openapi/src/model/rider.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'term_assurance.g.dart';

/// TermAssurance
///
/// Properties:
/// * [personId] 
/// * [businessType] 
/// * [businessChannel] 
/// * [sumAssured] 
/// * [term] 
/// * [frequency] 
/// * [customerId] 
/// * [shares] 
/// * [riders] 
@BuiltValue()
abstract class TermAssurance implements DeathCover, Built<TermAssurance, TermAssuranceBuilder> {
  @BuiltValueField(wireName: r'shares')
  BuiltList<BeneficiaryShare>? get shares;

  @BuiltValueField(wireName: r'riders')
  BuiltList<Rider>? get riders;

  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  TermAssurance._();

  factory TermAssurance([void updates(TermAssuranceBuilder b)]) = _$TermAssurance;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TermAssuranceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TermAssurance> get serializer => _$TermAssuranceSerializer();
}

class _$TermAssuranceSerializer implements PrimitiveSerializer<TermAssurance> {
  @override
  final Iterable<Type> types = const [TermAssurance, _$TermAssurance];

  @override
  final String wireName = r'TermAssurance';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TermAssurance object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.shares != null) {
      yield r'shares';
      yield serializers.serialize(
        object.shares,
        specifiedType: const FullType(BuiltList, [FullType(BeneficiaryShare)]),
      );
    }
    yield r'sumAssured';
    yield serializers.serialize(
      object.sumAssured,
      specifiedType: const FullType(num),
    );
    if (object.riders != null) {
      yield r'riders';
      yield serializers.serialize(
        object.riders,
        specifiedType: const FullType(BuiltList, [FullType(Rider)]),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    yield r'personId';
    yield serializers.serialize(
      object.personId,
      specifiedType: const FullType(String),
    );
    yield r'term';
    yield serializers.serialize(
      object.term,
      specifiedType: const FullType(num),
    );
    if (object.businessType != null) {
      yield r'businessType';
      yield serializers.serialize(
        object.businessType,
        specifiedType: const FullType(String),
      );
    }
    if (object.businessChannel != null) {
      yield r'businessChannel';
      yield serializers.serialize(
        object.businessChannel,
        specifiedType: const FullType(String),
      );
    }
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(DeathCoverFrequencyEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TermAssurance object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TermAssuranceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(BeneficiaryShare)]),
          ) as BuiltList<BeneficiaryShare>?;
          if (valueDes == null) continue;
          result.shares.replace(valueDes);
          break;
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.sumAssured = valueDes;
          break;
        case r'riders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Rider)]),
          ) as BuiltList<Rider>?;
          if (valueDes == null) continue;
          result.riders.replace(valueDes);
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'term':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.term = valueDes;
          break;
        case r'businessType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessType = valueDes;
          break;
        case r'businessChannel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessChannel = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeathCoverFrequencyEnum),
          ) as DeathCoverFrequencyEnum;
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
  TermAssurance deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TermAssuranceBuilder();
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


class TermAssuranceFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const TermAssuranceFrequencyEnum monthly = _$termAssuranceFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const TermAssuranceFrequencyEnum quarterly = _$termAssuranceFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const TermAssuranceFrequencyEnum biannual = _$termAssuranceFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const TermAssuranceFrequencyEnum annual = _$termAssuranceFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const TermAssuranceFrequencyEnum single = _$termAssuranceFrequencyEnum_single;

  static Serializer<TermAssuranceFrequencyEnum> get serializer => _$termAssuranceFrequencyEnumSerializer;

  const TermAssuranceFrequencyEnum._(String name): super(name);

  static BuiltSet<TermAssuranceFrequencyEnum> get values => _$termAssuranceFrequencyEnumValues;
  static TermAssuranceFrequencyEnum valueOf(String name) => _$termAssuranceFrequencyEnumValueOf(name);
}

