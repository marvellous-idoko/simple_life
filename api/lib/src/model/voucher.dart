//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'voucher.g.dart';

/// Voucher
///
/// Properties:
/// * [claimId] 
/// * [email] 
/// * [name] 
/// * [phoneNumber] 
/// * [recipientType] 
/// * [company] 
/// * [claimantIds] - add one or more claimants per DV
@BuiltValue()
abstract class Voucher implements Built<Voucher, VoucherBuilder> {
  @BuiltValueField(wireName: r'claimId')
  String? get claimId;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'recipientType')
  VoucherRecipientTypeEnum? get recipientType;
  // enum recipientTypeEnum {  Insured,  Third Party,  None,  };

  @BuiltValueField(wireName: r'company')
  VoucherCompanyEnum? get company;
  // enum companyEnum {  Heirs Insurance,  Heirs Life Assurance,  };

  /// add one or more claimants per DV
  @BuiltValueField(wireName: r'claimantIds')
  BuiltList<String>? get claimantIds;

  Voucher._();

  factory Voucher([void updates(VoucherBuilder b)]) = _$Voucher;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VoucherBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Voucher> get serializer => _$VoucherSerializer();
}

class _$VoucherSerializer implements PrimitiveSerializer<Voucher> {
  @override
  final Iterable<Type> types = const [Voucher, _$Voucher];

  @override
  final String wireName = r'Voucher';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Voucher object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.claimId != null) {
      yield r'claimId';
      yield serializers.serialize(
        object.claimId,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.recipientType != null) {
      yield r'recipientType';
      yield serializers.serialize(
        object.recipientType,
        specifiedType: const FullType(VoucherRecipientTypeEnum),
      );
    }
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
        specifiedType: const FullType(VoucherCompanyEnum),
      );
    }
    if (object.claimantIds != null) {
      yield r'claimantIds';
      yield serializers.serialize(
        object.claimantIds,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Voucher object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VoucherBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phoneNumber = valueDes;
          break;
        case r'recipientType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VoucherRecipientTypeEnum),
          ) as VoucherRecipientTypeEnum?;
          if (valueDes == null) continue;
          result.recipientType = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(VoucherCompanyEnum),
          ) as VoucherCompanyEnum?;
          if (valueDes == null) continue;
          result.company = valueDes;
          break;
        case r'claimantIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.claimantIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Voucher deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VoucherBuilder();
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


class VoucherRecipientTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Insured')
  static const VoucherRecipientTypeEnum insured = _$voucherRecipientTypeEnum_insured;
  @BuiltValueEnumConst(wireName: r'Third Party')
  static const VoucherRecipientTypeEnum thirdParty = _$voucherRecipientTypeEnum_thirdParty;
  @BuiltValueEnumConst(wireName: r'None')
  static const VoucherRecipientTypeEnum none = _$voucherRecipientTypeEnum_none;

  static Serializer<VoucherRecipientTypeEnum> get serializer => _$voucherRecipientTypeEnumSerializer;

  const VoucherRecipientTypeEnum._(String name): super(name);

  static BuiltSet<VoucherRecipientTypeEnum> get values => _$voucherRecipientTypeEnumValues;
  static VoucherRecipientTypeEnum valueOf(String name) => _$voucherRecipientTypeEnumValueOf(name);
}

class VoucherCompanyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Heirs Insurance')
  static const VoucherCompanyEnum heirsInsurance = _$voucherCompanyEnum_heirsInsurance;
  @BuiltValueEnumConst(wireName: r'Heirs Life Assurance')
  static const VoucherCompanyEnum heirsLifeAssurance = _$voucherCompanyEnum_heirsLifeAssurance;

  static Serializer<VoucherCompanyEnum> get serializer => _$voucherCompanyEnumSerializer;

  const VoucherCompanyEnum._(String name): super(name);

  static BuiltSet<VoucherCompanyEnum> get values => _$voucherCompanyEnumValues;
  static VoucherCompanyEnum valueOf(String name) => _$voucherCompanyEnumValueOf(name);
}

