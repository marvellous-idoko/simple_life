//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/claimant_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claimant.g.dart';

/// Claimant
///
/// Properties:
/// * [claimantId] 
/// * [claimantName] 
/// * [details] 
/// * [responsibility] 
/// * [claimantType] 
/// * [claimType] 
@BuiltValue()
abstract class Claimant implements Built<Claimant, ClaimantBuilder> {
  @BuiltValueField(wireName: r'claimantId')
  String? get claimantId;

  @BuiltValueField(wireName: r'claimantName')
  String? get claimantName;

  @BuiltValueField(wireName: r'details')
  BuiltList<ClaimantDetailsInner>? get details;

  @BuiltValueField(wireName: r'responsibility')
  ClaimantResponsibilityEnum? get responsibility;
  // enum responsibilityEnum {  Us,  Others,  Shared,  };

  @BuiltValueField(wireName: r'claimantType')
  ClaimantClaimantTypeEnum? get claimantType;
  // enum claimantTypeEnum {  Insured,  Third Party,  Beneficiary,  Loss Adjuster,  };

  @BuiltValueField(wireName: r'claimType')
  ClaimantClaimTypeEnum? get claimType;
  // enum claimTypeEnum {  Material,  Bodily,  Total Loss,  Death,  Others,  Policy Cancellation,  Surrender,  Policy Loan,  Policy Withdrawal,  Policy Maturity,  Partial Maturity,  };

  Claimant._();

  factory Claimant([void updates(ClaimantBuilder b)]) = _$Claimant;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimantBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Claimant> get serializer => _$ClaimantSerializer();
}

class _$ClaimantSerializer implements PrimitiveSerializer<Claimant> {
  @override
  final Iterable<Type> types = const [Claimant, _$Claimant];

  @override
  final String wireName = r'Claimant';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Claimant object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.claimantId != null) {
      yield r'claimantId';
      yield serializers.serialize(
        object.claimantId,
        specifiedType: const FullType(String),
      );
    }
    if (object.claimantName != null) {
      yield r'claimantName';
      yield serializers.serialize(
        object.claimantName,
        specifiedType: const FullType(String),
      );
    }
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltList, [FullType(ClaimantDetailsInner)]),
      );
    }
    if (object.responsibility != null) {
      yield r'responsibility';
      yield serializers.serialize(
        object.responsibility,
        specifiedType: const FullType(ClaimantResponsibilityEnum),
      );
    }
    if (object.claimantType != null) {
      yield r'claimantType';
      yield serializers.serialize(
        object.claimantType,
        specifiedType: const FullType(ClaimantClaimantTypeEnum),
      );
    }
    if (object.claimType != null) {
      yield r'claimType';
      yield serializers.serialize(
        object.claimType,
        specifiedType: const FullType(ClaimantClaimTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Claimant object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimantBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimantId = valueDes;
          break;
        case r'claimantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimantName = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ClaimantDetailsInner)]),
          ) as BuiltList<ClaimantDetailsInner>?;
          if (valueDes == null) continue;
          result.details.replace(valueDes);
          break;
        case r'responsibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ClaimantResponsibilityEnum),
          ) as ClaimantResponsibilityEnum?;
          if (valueDes == null) continue;
          result.responsibility = valueDes;
          break;
        case r'claimantType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ClaimantClaimantTypeEnum),
          ) as ClaimantClaimantTypeEnum?;
          if (valueDes == null) continue;
          result.claimantType = valueDes;
          break;
        case r'claimType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ClaimantClaimTypeEnum),
          ) as ClaimantClaimTypeEnum?;
          if (valueDes == null) continue;
          result.claimType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Claimant deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimantBuilder();
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


class ClaimantResponsibilityEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Us')
  static const ClaimantResponsibilityEnum us = _$claimantResponsibilityEnum_us;
  @BuiltValueEnumConst(wireName: r'Others')
  static const ClaimantResponsibilityEnum others = _$claimantResponsibilityEnum_others;
  @BuiltValueEnumConst(wireName: r'Shared')
  static const ClaimantResponsibilityEnum shared = _$claimantResponsibilityEnum_shared;

  static Serializer<ClaimantResponsibilityEnum> get serializer => _$claimantResponsibilityEnumSerializer;

  const ClaimantResponsibilityEnum._(String name): super(name);

  static BuiltSet<ClaimantResponsibilityEnum> get values => _$claimantResponsibilityEnumValues;
  static ClaimantResponsibilityEnum valueOf(String name) => _$claimantResponsibilityEnumValueOf(name);
}

class ClaimantClaimantTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Insured')
  static const ClaimantClaimantTypeEnum insured = _$claimantClaimantTypeEnum_insured;
  @BuiltValueEnumConst(wireName: r'Third Party')
  static const ClaimantClaimantTypeEnum thirdParty = _$claimantClaimantTypeEnum_thirdParty;
  @BuiltValueEnumConst(wireName: r'Beneficiary')
  static const ClaimantClaimantTypeEnum beneficiary = _$claimantClaimantTypeEnum_beneficiary;
  @BuiltValueEnumConst(wireName: r'Loss Adjuster')
  static const ClaimantClaimantTypeEnum lossAdjuster = _$claimantClaimantTypeEnum_lossAdjuster;

  static Serializer<ClaimantClaimantTypeEnum> get serializer => _$claimantClaimantTypeEnumSerializer;

  const ClaimantClaimantTypeEnum._(String name): super(name);

  static BuiltSet<ClaimantClaimantTypeEnum> get values => _$claimantClaimantTypeEnumValues;
  static ClaimantClaimantTypeEnum valueOf(String name) => _$claimantClaimantTypeEnumValueOf(name);
}

class ClaimantClaimTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Material')
  static const ClaimantClaimTypeEnum material = _$claimantClaimTypeEnum_material;
  @BuiltValueEnumConst(wireName: r'Bodily')
  static const ClaimantClaimTypeEnum bodily = _$claimantClaimTypeEnum_bodily;
  @BuiltValueEnumConst(wireName: r'Total Loss')
  static const ClaimantClaimTypeEnum totalLoss = _$claimantClaimTypeEnum_totalLoss;
  @BuiltValueEnumConst(wireName: r'Death')
  static const ClaimantClaimTypeEnum death = _$claimantClaimTypeEnum_death;
  @BuiltValueEnumConst(wireName: r'Others')
  static const ClaimantClaimTypeEnum others = _$claimantClaimTypeEnum_others;
  @BuiltValueEnumConst(wireName: r'Policy Cancellation')
  static const ClaimantClaimTypeEnum policyCancellation = _$claimantClaimTypeEnum_policyCancellation;
  @BuiltValueEnumConst(wireName: r'Surrender')
  static const ClaimantClaimTypeEnum surrender = _$claimantClaimTypeEnum_surrender;
  @BuiltValueEnumConst(wireName: r'Policy Loan')
  static const ClaimantClaimTypeEnum policyLoan = _$claimantClaimTypeEnum_policyLoan;
  @BuiltValueEnumConst(wireName: r'Policy Withdrawal')
  static const ClaimantClaimTypeEnum policyWithdrawal = _$claimantClaimTypeEnum_policyWithdrawal;
  @BuiltValueEnumConst(wireName: r'Policy Maturity')
  static const ClaimantClaimTypeEnum policyMaturity = _$claimantClaimTypeEnum_policyMaturity;
  @BuiltValueEnumConst(wireName: r'Partial Maturity')
  static const ClaimantClaimTypeEnum partialMaturity = _$claimantClaimTypeEnum_partialMaturity;

  static Serializer<ClaimantClaimTypeEnum> get serializer => _$claimantClaimTypeEnumSerializer;

  const ClaimantClaimTypeEnum._(String name): super(name);

  static BuiltSet<ClaimantClaimTypeEnum> get values => _$claimantClaimTypeEnumValues;
  static ClaimantClaimTypeEnum valueOf(String name) => _$claimantClaimTypeEnumValueOf(name);
}

