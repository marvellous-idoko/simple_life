//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'company_partner.g.dart';

/// CompanyPartner
///
/// Properties:
/// * [name] 
/// * [address] 
/// * [focus] 
/// * [registrationNumber] 
/// * [terms] 
/// * [termsVersion] 
/// * [businessRegistrationType] 
/// * [contact] 
/// * [contactEmail] 
/// * [contactPhone] 
/// * [whyUs] 
/// * [partnerId] 
/// * [lgaId] 
/// * [linkedPartnerId] 
/// * [linkedPartnerType] 
@BuiltValue()
abstract class CompanyPartner implements Built<CompanyPartner, CompanyPartnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'focus')
  String? get focus;

  @BuiltValueField(wireName: r'registrationNumber')
  String? get registrationNumber;

  @BuiltValueField(wireName: r'terms')
  bool? get terms;

  @BuiltValueField(wireName: r'termsVersion')
  int? get termsVersion;

  @BuiltValueField(wireName: r'businessRegistrationType')
  CompanyPartnerBusinessRegistrationTypeEnum? get businessRegistrationType;
  // enum businessRegistrationTypeEnum {  Limited Liability Company,  Public Liability Company,  Incorporated Trustees,  Business Name,  };

  @BuiltValueField(wireName: r'contact')
  String? get contact;

  @BuiltValueField(wireName: r'contactEmail')
  String? get contactEmail;

  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  @BuiltValueField(wireName: r'whyUs')
  String? get whyUs;

  @BuiltValueField(wireName: r'partnerId')
  String? get partnerId;

  @BuiltValueField(wireName: r'lgaId')
  String? get lgaId;

  @BuiltValueField(wireName: r'linkedPartnerId')
  String? get linkedPartnerId;

  @BuiltValueField(wireName: r'linkedPartnerType')
  CompanyPartnerLinkedPartnerTypeEnum? get linkedPartnerType;
  // enum linkedPartnerTypeEnum {  broker,  };

  CompanyPartner._();

  factory CompanyPartner([void updates(CompanyPartnerBuilder b)]) = _$CompanyPartner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CompanyPartnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CompanyPartner> get serializer => _$CompanyPartnerSerializer();
}

class _$CompanyPartnerSerializer implements PrimitiveSerializer<CompanyPartner> {
  @override
  final Iterable<Type> types = const [CompanyPartner, _$CompanyPartner];

  @override
  final String wireName = r'CompanyPartner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CompanyPartner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.focus != null) {
      yield r'focus';
      yield serializers.serialize(
        object.focus,
        specifiedType: const FullType(String),
      );
    }
    if (object.registrationNumber != null) {
      yield r'registrationNumber';
      yield serializers.serialize(
        object.registrationNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.terms != null) {
      yield r'terms';
      yield serializers.serialize(
        object.terms,
        specifiedType: const FullType(bool),
      );
    }
    if (object.termsVersion != null) {
      yield r'termsVersion';
      yield serializers.serialize(
        object.termsVersion,
        specifiedType: const FullType(int),
      );
    }
    if (object.businessRegistrationType != null) {
      yield r'businessRegistrationType';
      yield serializers.serialize(
        object.businessRegistrationType,
        specifiedType: const FullType(CompanyPartnerBusinessRegistrationTypeEnum),
      );
    }
    if (object.contact != null) {
      yield r'contact';
      yield serializers.serialize(
        object.contact,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactEmail != null) {
      yield r'contactEmail';
      yield serializers.serialize(
        object.contactEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPhone != null) {
      yield r'contactPhone';
      yield serializers.serialize(
        object.contactPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.whyUs != null) {
      yield r'whyUs';
      yield serializers.serialize(
        object.whyUs,
        specifiedType: const FullType(String),
      );
    }
    if (object.partnerId != null) {
      yield r'partnerId';
      yield serializers.serialize(
        object.partnerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.lgaId != null) {
      yield r'lgaId';
      yield serializers.serialize(
        object.lgaId,
        specifiedType: const FullType(String),
      );
    }
    if (object.linkedPartnerId != null) {
      yield r'linkedPartnerId';
      yield serializers.serialize(
        object.linkedPartnerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.linkedPartnerType != null) {
      yield r'linkedPartnerType';
      yield serializers.serialize(
        object.linkedPartnerType,
        specifiedType: const FullType(CompanyPartnerLinkedPartnerTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CompanyPartner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CompanyPartnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'focus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.focus = valueDes;
          break;
        case r'registrationNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.registrationNumber = valueDes;
          break;
        case r'terms':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.terms = valueDes;
          break;
        case r'termsVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.termsVersion = valueDes;
          break;
        case r'businessRegistrationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CompanyPartnerBusinessRegistrationTypeEnum),
          ) as CompanyPartnerBusinessRegistrationTypeEnum?;
          if (valueDes == null) continue;
          result.businessRegistrationType = valueDes;
          break;
        case r'contact':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contact = valueDes;
          break;
        case r'contactEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactEmail = valueDes;
          break;
        case r'contactPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contactPhone = valueDes;
          break;
        case r'whyUs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.whyUs = valueDes;
          break;
        case r'partnerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.partnerId = valueDes;
          break;
        case r'lgaId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lgaId = valueDes;
          break;
        case r'linkedPartnerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.linkedPartnerId = valueDes;
          break;
        case r'linkedPartnerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CompanyPartnerLinkedPartnerTypeEnum),
          ) as CompanyPartnerLinkedPartnerTypeEnum?;
          if (valueDes == null) continue;
          result.linkedPartnerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CompanyPartner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CompanyPartnerBuilder();
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


class CompanyPartnerBusinessRegistrationTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Limited Liability Company')
  static const CompanyPartnerBusinessRegistrationTypeEnum limitedLiabilityCompany = _$companyPartnerBusinessRegistrationTypeEnum_limitedLiabilityCompany;
  @BuiltValueEnumConst(wireName: r'Public Liability Company')
  static const CompanyPartnerBusinessRegistrationTypeEnum publicLiabilityCompany = _$companyPartnerBusinessRegistrationTypeEnum_publicLiabilityCompany;
  @BuiltValueEnumConst(wireName: r'Incorporated Trustees')
  static const CompanyPartnerBusinessRegistrationTypeEnum incorporatedTrustees = _$companyPartnerBusinessRegistrationTypeEnum_incorporatedTrustees;
  @BuiltValueEnumConst(wireName: r'Business Name')
  static const CompanyPartnerBusinessRegistrationTypeEnum businessName = _$companyPartnerBusinessRegistrationTypeEnum_businessName;

  static Serializer<CompanyPartnerBusinessRegistrationTypeEnum> get serializer => _$companyPartnerBusinessRegistrationTypeEnumSerializer;

  const CompanyPartnerBusinessRegistrationTypeEnum._(String name): super(name);

  static BuiltSet<CompanyPartnerBusinessRegistrationTypeEnum> get values => _$companyPartnerBusinessRegistrationTypeEnumValues;
  static CompanyPartnerBusinessRegistrationTypeEnum valueOf(String name) => _$companyPartnerBusinessRegistrationTypeEnumValueOf(name);
}

class CompanyPartnerLinkedPartnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'broker')
  static const CompanyPartnerLinkedPartnerTypeEnum broker = _$companyPartnerLinkedPartnerTypeEnum_broker;

  static Serializer<CompanyPartnerLinkedPartnerTypeEnum> get serializer => _$companyPartnerLinkedPartnerTypeEnumSerializer;

  const CompanyPartnerLinkedPartnerTypeEnum._(String name): super(name);

  static BuiltSet<CompanyPartnerLinkedPartnerTypeEnum> get values => _$companyPartnerLinkedPartnerTypeEnumValues;
  static CompanyPartnerLinkedPartnerTypeEnum valueOf(String name) => _$companyPartnerLinkedPartnerTypeEnumValueOf(name);
}

