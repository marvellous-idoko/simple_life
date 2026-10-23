//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'upload.g.dart';

/// Upload
///
/// Properties:
/// * [url] 
/// * [use] 
@BuiltValue(instantiable: false)
abstract class Upload  {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'use')
  UploadUseEnum get use;
  // enum useEnum {  idcard,  broker-license,  cac-2,  cac-7,  partner-id-card,  partner-utility,  photo,  utility,  claim,  signature,  agent-qualification,  agent-photo,  agent-id,  agent-utility,  agent-guarantor-utility-1,  agent-guarantor-utility-2,  agent-signature,  pre-loss-pix,  policy-attachment,  annuity-id,  annuity-age-evidence,  annuity-utility-bill,  annuity-retirement-letter,  annuity-rsa-balance,  annuity-passport,  annuity-signature,  company-logo,  cac-certificate,  left-side,  right-side,  front-side,  rear-side,  windscreen,  chassis,  odometer,  attachment,  manual-receipt,  paystack-link-import,  campaign,  driver-license,  evidence-of-payment,  claim-invoice,  police-report,  npc-death-cert,  medical-death-cert,  loss-evidence,  cac,  proof-of-ownership,  ctr,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<Upload> get serializer => _$UploadSerializer();
}

class _$UploadSerializer implements PrimitiveSerializer<Upload> {
  @override
  final Iterable<Type> types = const [Upload];

  @override
  final String wireName = r'Upload';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Upload object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    yield r'use';
    yield serializers.serialize(
      object.use,
      specifiedType: const FullType(UploadUseEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Upload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  Upload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($Upload)) as $Upload;
  }
}


/// a concrete implementation of [Upload], since [Upload] is not instantiable
@BuiltValue(instantiable: true)
abstract class $Upload implements Upload, Built<$Upload, $UploadBuilder> {
  $Upload._();

  factory $Upload([void Function($UploadBuilder)? updates]) = _$$Upload;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($UploadBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$Upload> get serializer => _$$UploadSerializer();
}

class _$$UploadSerializer implements PrimitiveSerializer<$Upload> {
  @override
  final Iterable<Type> types = const [$Upload, _$$Upload];

  @override
  final String wireName = r'$Upload';

  @override
  Object serialize(
    Serializers serializers,
    $Upload object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(Upload))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UploadBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UploadUseEnum),
          ) as UploadUseEnum;
          result.use = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $Upload deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $UploadBuilder();
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

class UploadUseEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'idcard')
  static const UploadUseEnum idcard = _$uploadUseEnum_idcard;
  @BuiltValueEnumConst(wireName: r'broker-license')
  static const UploadUseEnum brokerLicense = _$uploadUseEnum_brokerLicense;
  @BuiltValueEnumConst(wireName: r'cac-2')
  static const UploadUseEnum cac2 = _$uploadUseEnum_cac2;
  @BuiltValueEnumConst(wireName: r'cac-7')
  static const UploadUseEnum cac7 = _$uploadUseEnum_cac7;
  @BuiltValueEnumConst(wireName: r'partner-id-card')
  static const UploadUseEnum partnerIdCard = _$uploadUseEnum_partnerIdCard;
  @BuiltValueEnumConst(wireName: r'partner-utility')
  static const UploadUseEnum partnerUtility = _$uploadUseEnum_partnerUtility;
  @BuiltValueEnumConst(wireName: r'photo')
  static const UploadUseEnum photo = _$uploadUseEnum_photo;
  @BuiltValueEnumConst(wireName: r'utility')
  static const UploadUseEnum utility = _$uploadUseEnum_utility;
  @BuiltValueEnumConst(wireName: r'claim')
  static const UploadUseEnum claim = _$uploadUseEnum_claim;
  @BuiltValueEnumConst(wireName: r'signature')
  static const UploadUseEnum signature = _$uploadUseEnum_signature;
  @BuiltValueEnumConst(wireName: r'agent-qualification')
  static const UploadUseEnum agentQualification = _$uploadUseEnum_agentQualification;
  @BuiltValueEnumConst(wireName: r'agent-photo')
  static const UploadUseEnum agentPhoto = _$uploadUseEnum_agentPhoto;
  @BuiltValueEnumConst(wireName: r'agent-id')
  static const UploadUseEnum agentId = _$uploadUseEnum_agentId;
  @BuiltValueEnumConst(wireName: r'agent-utility')
  static const UploadUseEnum agentUtility = _$uploadUseEnum_agentUtility;
  @BuiltValueEnumConst(wireName: r'agent-guarantor-utility-1')
  static const UploadUseEnum agentGuarantorUtility1 = _$uploadUseEnum_agentGuarantorUtility1;
  @BuiltValueEnumConst(wireName: r'agent-guarantor-utility-2')
  static const UploadUseEnum agentGuarantorUtility2 = _$uploadUseEnum_agentGuarantorUtility2;
  @BuiltValueEnumConst(wireName: r'agent-signature')
  static const UploadUseEnum agentSignature = _$uploadUseEnum_agentSignature;
  @BuiltValueEnumConst(wireName: r'pre-loss-pix')
  static const UploadUseEnum preLossPix = _$uploadUseEnum_preLossPix;
  @BuiltValueEnumConst(wireName: r'policy-attachment')
  static const UploadUseEnum policyAttachment = _$uploadUseEnum_policyAttachment;
  @BuiltValueEnumConst(wireName: r'annuity-id')
  static const UploadUseEnum annuityId = _$uploadUseEnum_annuityId;
  @BuiltValueEnumConst(wireName: r'annuity-age-evidence')
  static const UploadUseEnum annuityAgeEvidence = _$uploadUseEnum_annuityAgeEvidence;
  @BuiltValueEnumConst(wireName: r'annuity-utility-bill')
  static const UploadUseEnum annuityUtilityBill = _$uploadUseEnum_annuityUtilityBill;
  @BuiltValueEnumConst(wireName: r'annuity-retirement-letter')
  static const UploadUseEnum annuityRetirementLetter = _$uploadUseEnum_annuityRetirementLetter;
  @BuiltValueEnumConst(wireName: r'annuity-rsa-balance')
  static const UploadUseEnum annuityRsaBalance = _$uploadUseEnum_annuityRsaBalance;
  @BuiltValueEnumConst(wireName: r'annuity-passport')
  static const UploadUseEnum annuityPassport = _$uploadUseEnum_annuityPassport;
  @BuiltValueEnumConst(wireName: r'annuity-signature')
  static const UploadUseEnum annuitySignature = _$uploadUseEnum_annuitySignature;
  @BuiltValueEnumConst(wireName: r'company-logo')
  static const UploadUseEnum companyLogo = _$uploadUseEnum_companyLogo;
  @BuiltValueEnumConst(wireName: r'cac-certificate')
  static const UploadUseEnum cacCertificate = _$uploadUseEnum_cacCertificate;
  @BuiltValueEnumConst(wireName: r'left-side')
  static const UploadUseEnum leftSide = _$uploadUseEnum_leftSide;
  @BuiltValueEnumConst(wireName: r'right-side')
  static const UploadUseEnum rightSide = _$uploadUseEnum_rightSide;
  @BuiltValueEnumConst(wireName: r'front-side')
  static const UploadUseEnum frontSide = _$uploadUseEnum_frontSide;
  @BuiltValueEnumConst(wireName: r'rear-side')
  static const UploadUseEnum rearSide = _$uploadUseEnum_rearSide;
  @BuiltValueEnumConst(wireName: r'windscreen')
  static const UploadUseEnum windscreen = _$uploadUseEnum_windscreen;
  @BuiltValueEnumConst(wireName: r'chassis')
  static const UploadUseEnum chassis = _$uploadUseEnum_chassis;
  @BuiltValueEnumConst(wireName: r'odometer')
  static const UploadUseEnum odometer = _$uploadUseEnum_odometer;
  @BuiltValueEnumConst(wireName: r'attachment')
  static const UploadUseEnum attachment = _$uploadUseEnum_attachment;
  @BuiltValueEnumConst(wireName: r'manual-receipt')
  static const UploadUseEnum manualReceipt = _$uploadUseEnum_manualReceipt;
  @BuiltValueEnumConst(wireName: r'paystack-link-import')
  static const UploadUseEnum paystackLinkImport = _$uploadUseEnum_paystackLinkImport;
  @BuiltValueEnumConst(wireName: r'campaign')
  static const UploadUseEnum campaign = _$uploadUseEnum_campaign;
  @BuiltValueEnumConst(wireName: r'driver-license')
  static const UploadUseEnum driverLicense = _$uploadUseEnum_driverLicense;
  @BuiltValueEnumConst(wireName: r'evidence-of-payment')
  static const UploadUseEnum evidenceOfPayment = _$uploadUseEnum_evidenceOfPayment;
  @BuiltValueEnumConst(wireName: r'claim-invoice')
  static const UploadUseEnum claimInvoice = _$uploadUseEnum_claimInvoice;
  @BuiltValueEnumConst(wireName: r'police-report')
  static const UploadUseEnum policeReport = _$uploadUseEnum_policeReport;
  @BuiltValueEnumConst(wireName: r'npc-death-cert')
  static const UploadUseEnum npcDeathCert = _$uploadUseEnum_npcDeathCert;
  @BuiltValueEnumConst(wireName: r'medical-death-cert')
  static const UploadUseEnum medicalDeathCert = _$uploadUseEnum_medicalDeathCert;
  @BuiltValueEnumConst(wireName: r'loss-evidence')
  static const UploadUseEnum lossEvidence = _$uploadUseEnum_lossEvidence;
  @BuiltValueEnumConst(wireName: r'cac')
  static const UploadUseEnum cac = _$uploadUseEnum_cac;
  @BuiltValueEnumConst(wireName: r'proof-of-ownership')
  static const UploadUseEnum proofOfOwnership = _$uploadUseEnum_proofOfOwnership;
  @BuiltValueEnumConst(wireName: r'ctr')
  static const UploadUseEnum ctr = _$uploadUseEnum_ctr;

  static Serializer<UploadUseEnum> get serializer => _$uploadUseEnumSerializer;

  const UploadUseEnum._(String name): super(name);

  static BuiltSet<UploadUseEnum> get values => _$uploadUseEnumValues;
  static UploadUseEnum valueOf(String name) => _$uploadUseEnumValueOf(name);
}

