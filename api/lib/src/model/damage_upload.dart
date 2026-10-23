//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/upload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'damage_upload.g.dart';

/// DamageUpload
///
/// Properties:
/// * [url] 
/// * [use] 
/// * [damageId] 
/// * [damageUploadId] 
/// * [documentName] 
@BuiltValue()
abstract class DamageUpload implements Upload, Built<DamageUpload, DamageUploadBuilder> {
  @BuiltValueField(wireName: r'damageId')
  String? get damageId;

  @BuiltValueField(wireName: r'damageUploadId')
  String? get damageUploadId;

  @BuiltValueField(wireName: r'documentName')
  String? get documentName;

  DamageUpload._();

  factory DamageUpload([void updates(DamageUploadBuilder b)]) = _$DamageUpload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DamageUploadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DamageUpload> get serializer => _$DamageUploadSerializer();
}

class _$DamageUploadSerializer implements PrimitiveSerializer<DamageUpload> {
  @override
  final Iterable<Type> types = const [DamageUpload, _$DamageUpload];

  @override
  final String wireName = r'DamageUpload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DamageUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.damageUploadId != null) {
      yield r'damageUploadId';
      yield serializers.serialize(
        object.damageUploadId,
        specifiedType: const FullType(String),
      );
    }
    if (object.damageId != null) {
      yield r'damageId';
      yield serializers.serialize(
        object.damageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.documentName != null) {
      yield r'documentName';
      yield serializers.serialize(
        object.documentName,
        specifiedType: const FullType(String),
      );
    }
    yield r'use';
    yield serializers.serialize(
      object.use,
      specifiedType: const FullType(UploadUseEnum),
    );
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DamageUpload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DamageUploadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'damageUploadId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.damageUploadId = valueDes;
          break;
        case r'damageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.damageId = valueDes;
          break;
        case r'documentName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentName = valueDes;
          break;
        case r'use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UploadUseEnum),
          ) as UploadUseEnum;
          result.use = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DamageUpload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DamageUploadBuilder();
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


class DamageUploadUseEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'idcard')
  static const DamageUploadUseEnum idcard = _$damageUploadUseEnum_idcard;
  @BuiltValueEnumConst(wireName: r'broker-license')
  static const DamageUploadUseEnum brokerLicense = _$damageUploadUseEnum_brokerLicense;
  @BuiltValueEnumConst(wireName: r'cac-2')
  static const DamageUploadUseEnum cac2 = _$damageUploadUseEnum_cac2;
  @BuiltValueEnumConst(wireName: r'cac-7')
  static const DamageUploadUseEnum cac7 = _$damageUploadUseEnum_cac7;
  @BuiltValueEnumConst(wireName: r'partner-id-card')
  static const DamageUploadUseEnum partnerIdCard = _$damageUploadUseEnum_partnerIdCard;
  @BuiltValueEnumConst(wireName: r'partner-utility')
  static const DamageUploadUseEnum partnerUtility = _$damageUploadUseEnum_partnerUtility;
  @BuiltValueEnumConst(wireName: r'photo')
  static const DamageUploadUseEnum photo = _$damageUploadUseEnum_photo;
  @BuiltValueEnumConst(wireName: r'utility')
  static const DamageUploadUseEnum utility = _$damageUploadUseEnum_utility;
  @BuiltValueEnumConst(wireName: r'claim')
  static const DamageUploadUseEnum claim = _$damageUploadUseEnum_claim;
  @BuiltValueEnumConst(wireName: r'signature')
  static const DamageUploadUseEnum signature = _$damageUploadUseEnum_signature;
  @BuiltValueEnumConst(wireName: r'agent-qualification')
  static const DamageUploadUseEnum agentQualification = _$damageUploadUseEnum_agentQualification;
  @BuiltValueEnumConst(wireName: r'agent-photo')
  static const DamageUploadUseEnum agentPhoto = _$damageUploadUseEnum_agentPhoto;
  @BuiltValueEnumConst(wireName: r'agent-id')
  static const DamageUploadUseEnum agentId = _$damageUploadUseEnum_agentId;
  @BuiltValueEnumConst(wireName: r'agent-utility')
  static const DamageUploadUseEnum agentUtility = _$damageUploadUseEnum_agentUtility;
  @BuiltValueEnumConst(wireName: r'agent-guarantor-utility-1')
  static const DamageUploadUseEnum agentGuarantorUtility1 = _$damageUploadUseEnum_agentGuarantorUtility1;
  @BuiltValueEnumConst(wireName: r'agent-guarantor-utility-2')
  static const DamageUploadUseEnum agentGuarantorUtility2 = _$damageUploadUseEnum_agentGuarantorUtility2;
  @BuiltValueEnumConst(wireName: r'agent-signature')
  static const DamageUploadUseEnum agentSignature = _$damageUploadUseEnum_agentSignature;
  @BuiltValueEnumConst(wireName: r'pre-loss-pix')
  static const DamageUploadUseEnum preLossPix = _$damageUploadUseEnum_preLossPix;
  @BuiltValueEnumConst(wireName: r'policy-attachment')
  static const DamageUploadUseEnum policyAttachment = _$damageUploadUseEnum_policyAttachment;
  @BuiltValueEnumConst(wireName: r'annuity-id')
  static const DamageUploadUseEnum annuityId = _$damageUploadUseEnum_annuityId;
  @BuiltValueEnumConst(wireName: r'annuity-age-evidence')
  static const DamageUploadUseEnum annuityAgeEvidence = _$damageUploadUseEnum_annuityAgeEvidence;
  @BuiltValueEnumConst(wireName: r'annuity-utility-bill')
  static const DamageUploadUseEnum annuityUtilityBill = _$damageUploadUseEnum_annuityUtilityBill;
  @BuiltValueEnumConst(wireName: r'annuity-retirement-letter')
  static const DamageUploadUseEnum annuityRetirementLetter = _$damageUploadUseEnum_annuityRetirementLetter;
  @BuiltValueEnumConst(wireName: r'annuity-rsa-balance')
  static const DamageUploadUseEnum annuityRsaBalance = _$damageUploadUseEnum_annuityRsaBalance;
  @BuiltValueEnumConst(wireName: r'annuity-passport')
  static const DamageUploadUseEnum annuityPassport = _$damageUploadUseEnum_annuityPassport;
  @BuiltValueEnumConst(wireName: r'annuity-signature')
  static const DamageUploadUseEnum annuitySignature = _$damageUploadUseEnum_annuitySignature;
  @BuiltValueEnumConst(wireName: r'company-logo')
  static const DamageUploadUseEnum companyLogo = _$damageUploadUseEnum_companyLogo;
  @BuiltValueEnumConst(wireName: r'cac-certificate')
  static const DamageUploadUseEnum cacCertificate = _$damageUploadUseEnum_cacCertificate;
  @BuiltValueEnumConst(wireName: r'left-side')
  static const DamageUploadUseEnum leftSide = _$damageUploadUseEnum_leftSide;
  @BuiltValueEnumConst(wireName: r'right-side')
  static const DamageUploadUseEnum rightSide = _$damageUploadUseEnum_rightSide;
  @BuiltValueEnumConst(wireName: r'front-side')
  static const DamageUploadUseEnum frontSide = _$damageUploadUseEnum_frontSide;
  @BuiltValueEnumConst(wireName: r'rear-side')
  static const DamageUploadUseEnum rearSide = _$damageUploadUseEnum_rearSide;
  @BuiltValueEnumConst(wireName: r'windscreen')
  static const DamageUploadUseEnum windscreen = _$damageUploadUseEnum_windscreen;
  @BuiltValueEnumConst(wireName: r'chassis')
  static const DamageUploadUseEnum chassis = _$damageUploadUseEnum_chassis;
  @BuiltValueEnumConst(wireName: r'odometer')
  static const DamageUploadUseEnum odometer = _$damageUploadUseEnum_odometer;
  @BuiltValueEnumConst(wireName: r'attachment')
  static const DamageUploadUseEnum attachment = _$damageUploadUseEnum_attachment;
  @BuiltValueEnumConst(wireName: r'manual-receipt')
  static const DamageUploadUseEnum manualReceipt = _$damageUploadUseEnum_manualReceipt;
  @BuiltValueEnumConst(wireName: r'paystack-link-import')
  static const DamageUploadUseEnum paystackLinkImport = _$damageUploadUseEnum_paystackLinkImport;
  @BuiltValueEnumConst(wireName: r'campaign')
  static const DamageUploadUseEnum campaign = _$damageUploadUseEnum_campaign;
  @BuiltValueEnumConst(wireName: r'driver-license')
  static const DamageUploadUseEnum driverLicense = _$damageUploadUseEnum_driverLicense;
  @BuiltValueEnumConst(wireName: r'evidence-of-payment')
  static const DamageUploadUseEnum evidenceOfPayment = _$damageUploadUseEnum_evidenceOfPayment;
  @BuiltValueEnumConst(wireName: r'claim-invoice')
  static const DamageUploadUseEnum claimInvoice = _$damageUploadUseEnum_claimInvoice;
  @BuiltValueEnumConst(wireName: r'police-report')
  static const DamageUploadUseEnum policeReport = _$damageUploadUseEnum_policeReport;
  @BuiltValueEnumConst(wireName: r'npc-death-cert')
  static const DamageUploadUseEnum npcDeathCert = _$damageUploadUseEnum_npcDeathCert;
  @BuiltValueEnumConst(wireName: r'medical-death-cert')
  static const DamageUploadUseEnum medicalDeathCert = _$damageUploadUseEnum_medicalDeathCert;
  @BuiltValueEnumConst(wireName: r'loss-evidence')
  static const DamageUploadUseEnum lossEvidence = _$damageUploadUseEnum_lossEvidence;
  @BuiltValueEnumConst(wireName: r'cac')
  static const DamageUploadUseEnum cac = _$damageUploadUseEnum_cac;
  @BuiltValueEnumConst(wireName: r'proof-of-ownership')
  static const DamageUploadUseEnum proofOfOwnership = _$damageUploadUseEnum_proofOfOwnership;
  @BuiltValueEnumConst(wireName: r'ctr')
  static const DamageUploadUseEnum ctr = _$damageUploadUseEnum_ctr;

  static Serializer<DamageUploadUseEnum> get serializer => _$damageUploadUseEnumSerializer;

  const DamageUploadUseEnum._(String name): super(name);

  static BuiltSet<DamageUploadUseEnum> get values => _$damageUploadUseEnumValues;
  static DamageUploadUseEnum valueOf(String name) => _$damageUploadUseEnumValueOf(name);
}

