//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'individual_partner.g.dart';

/// IndividualPartner
///
/// Properties:
/// * [address] 
/// * [dateOfBirth] 
/// * [whyUs] 
/// * [partnerId] 
/// * [terms] 
/// * [termsVersion] 
/// * [lgaId] 
/// * [linkedPartnerId] 
/// * [linkedPartnerType] 
@BuiltValue()
abstract class IndividualPartner implements Built<IndividualPartner, IndividualPartnerBuilder> {
  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'dateOfBirth')
  String? get dateOfBirth;

  @BuiltValueField(wireName: r'whyUs')
  String? get whyUs;

  @BuiltValueField(wireName: r'partnerId')
  String? get partnerId;

  @BuiltValueField(wireName: r'terms')
  bool? get terms;

  @BuiltValueField(wireName: r'termsVersion')
  int? get termsVersion;

  @BuiltValueField(wireName: r'lgaId')
  String? get lgaId;

  @BuiltValueField(wireName: r'linkedPartnerId')
  String? get linkedPartnerId;

  @BuiltValueField(wireName: r'linkedPartnerType')
  IndividualPartnerLinkedPartnerTypeEnum? get linkedPartnerType;
  // enum linkedPartnerTypeEnum {  broker,  };

  IndividualPartner._();

  factory IndividualPartner([void updates(IndividualPartnerBuilder b)]) = _$IndividualPartner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndividualPartnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndividualPartner> get serializer => _$IndividualPartnerSerializer();
}

class _$IndividualPartnerSerializer implements PrimitiveSerializer<IndividualPartner> {
  @override
  final Iterable<Type> types = const [IndividualPartner, _$IndividualPartner];

  @override
  final String wireName = r'IndividualPartner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndividualPartner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateOfBirth != null) {
      yield r'dateOfBirth';
      yield serializers.serialize(
        object.dateOfBirth,
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
        specifiedType: const FullType(IndividualPartnerLinkedPartnerTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndividualPartner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndividualPartnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'dateOfBirth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dateOfBirth = valueDes;
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
            specifiedType: const FullType.nullable(IndividualPartnerLinkedPartnerTypeEnum),
          ) as IndividualPartnerLinkedPartnerTypeEnum?;
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
  IndividualPartner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndividualPartnerBuilder();
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


class IndividualPartnerLinkedPartnerTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'broker')
  static const IndividualPartnerLinkedPartnerTypeEnum broker = _$individualPartnerLinkedPartnerTypeEnum_broker;

  static Serializer<IndividualPartnerLinkedPartnerTypeEnum> get serializer => _$individualPartnerLinkedPartnerTypeEnumSerializer;

  const IndividualPartnerLinkedPartnerTypeEnum._(String name): super(name);

  static BuiltSet<IndividualPartnerLinkedPartnerTypeEnum> get values => _$individualPartnerLinkedPartnerTypeEnumValues;
  static IndividualPartnerLinkedPartnerTypeEnum valueOf(String name) => _$individualPartnerLinkedPartnerTypeEnumValueOf(name);
}

