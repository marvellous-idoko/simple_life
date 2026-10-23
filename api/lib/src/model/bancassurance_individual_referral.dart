//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/id_details.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bancassurance_individual_referral.g.dart';

/// BancassuranceIndividualReferral
///
/// Properties:
/// * [customerName] 
/// * [referredProduct] 
/// * [phone] 
/// * [dob] 
/// * [email] 
/// * [proofOfAddress] 
/// * [proofOfId] 
/// * [bvn] 
/// * [branchName] 
/// * [branchId] 
/// * [referrerName] 
/// * [referrerAccountNumber] 
/// * [channel] 
/// * [uniqueReferralNumber] 
/// * [address] 
/// * [idDetails] 
@BuiltValue()
abstract class BancassuranceIndividualReferral implements Built<BancassuranceIndividualReferral, BancassuranceIndividualReferralBuilder> {
  @BuiltValueField(wireName: r'customerName')
  String? get customerName;

  @BuiltValueField(wireName: r'referredProduct')
  String? get referredProduct;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'dob')
  String? get dob;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'proofOfAddress')
  String? get proofOfAddress;

  @BuiltValueField(wireName: r'proofOfId')
  String? get proofOfId;

  @BuiltValueField(wireName: r'bvn')
  String? get bvn;

  @BuiltValueField(wireName: r'branchName')
  String? get branchName;

  @BuiltValueField(wireName: r'branchId')
  String? get branchId;

  @BuiltValueField(wireName: r'referrerName')
  String? get referrerName;

  @BuiltValueField(wireName: r'referrerAccountNumber')
  num? get referrerAccountNumber;

  @BuiltValueField(wireName: r'channel')
  BancassuranceIndividualReferralChannelEnum? get channel;
  // enum channelEnum {  Branch,  USSD,  Internet Banking,  Mobile App,  Leo,  };

  @BuiltValueField(wireName: r'uniqueReferralNumber')
  String? get uniqueReferralNumber;

  @BuiltValueField(wireName: r'address')
  Address? get address;

  @BuiltValueField(wireName: r'idDetails')
  IdDetails? get idDetails;

  BancassuranceIndividualReferral._();

  factory BancassuranceIndividualReferral([void updates(BancassuranceIndividualReferralBuilder b)]) = _$BancassuranceIndividualReferral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BancassuranceIndividualReferralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BancassuranceIndividualReferral> get serializer => _$BancassuranceIndividualReferralSerializer();
}

class _$BancassuranceIndividualReferralSerializer implements PrimitiveSerializer<BancassuranceIndividualReferral> {
  @override
  final Iterable<Type> types = const [BancassuranceIndividualReferral, _$BancassuranceIndividualReferral];

  @override
  final String wireName = r'BancassuranceIndividualReferral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BancassuranceIndividualReferral object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerName != null) {
      yield r'customerName';
      yield serializers.serialize(
        object.customerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.referredProduct != null) {
      yield r'referredProduct';
      yield serializers.serialize(
        object.referredProduct,
        specifiedType: const FullType(String),
      );
    }
    if (object.phone != null) {
      yield r'phone';
      yield serializers.serialize(
        object.phone,
        specifiedType: const FullType(String),
      );
    }
    if (object.dob != null) {
      yield r'dob';
      yield serializers.serialize(
        object.dob,
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
    if (object.proofOfAddress != null) {
      yield r'proofOfAddress';
      yield serializers.serialize(
        object.proofOfAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.proofOfId != null) {
      yield r'proofOfId';
      yield serializers.serialize(
        object.proofOfId,
        specifiedType: const FullType(String),
      );
    }
    if (object.bvn != null) {
      yield r'bvn';
      yield serializers.serialize(
        object.bvn,
        specifiedType: const FullType(String),
      );
    }
    if (object.branchName != null) {
      yield r'branchName';
      yield serializers.serialize(
        object.branchName,
        specifiedType: const FullType(String),
      );
    }
    if (object.branchId != null) {
      yield r'branchId';
      yield serializers.serialize(
        object.branchId,
        specifiedType: const FullType(String),
      );
    }
    if (object.referrerName != null) {
      yield r'referrerName';
      yield serializers.serialize(
        object.referrerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.referrerAccountNumber != null) {
      yield r'referrerAccountNumber';
      yield serializers.serialize(
        object.referrerAccountNumber,
        specifiedType: const FullType(num),
      );
    }
    if (object.channel != null) {
      yield r'channel';
      yield serializers.serialize(
        object.channel,
        specifiedType: const FullType(BancassuranceIndividualReferralChannelEnum),
      );
    }
    if (object.uniqueReferralNumber != null) {
      yield r'uniqueReferralNumber';
      yield serializers.serialize(
        object.uniqueReferralNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(Address),
      );
    }
    if (object.idDetails != null) {
      yield r'idDetails';
      yield serializers.serialize(
        object.idDetails,
        specifiedType: const FullType(IdDetails),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BancassuranceIndividualReferral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BancassuranceIndividualReferralBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerName = valueDes;
          break;
        case r'referredProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referredProduct = valueDes;
          break;
        case r'phone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.phone = valueDes;
          break;
        case r'dob':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dob = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'proofOfAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proofOfAddress = valueDes;
          break;
        case r'proofOfId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.proofOfId = valueDes;
          break;
        case r'bvn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bvn = valueDes;
          break;
        case r'branchName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branchName = valueDes;
          break;
        case r'branchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branchId = valueDes;
          break;
        case r'referrerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referrerName = valueDes;
          break;
        case r'referrerAccountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.referrerAccountNumber = valueDes;
          break;
        case r'channel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BancassuranceIndividualReferralChannelEnum),
          ) as BancassuranceIndividualReferralChannelEnum?;
          if (valueDes == null) continue;
          result.channel = valueDes;
          break;
        case r'uniqueReferralNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uniqueReferralNumber = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Address),
          ) as Address?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'idDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IdDetails),
          ) as IdDetails?;
          if (valueDes == null) continue;
          result.idDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BancassuranceIndividualReferral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BancassuranceIndividualReferralBuilder();
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


class BancassuranceIndividualReferralChannelEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Branch')
  static const BancassuranceIndividualReferralChannelEnum branch = _$bancassuranceIndividualReferralChannelEnum_branch;
  @BuiltValueEnumConst(wireName: r'USSD')
  static const BancassuranceIndividualReferralChannelEnum USSD = _$bancassuranceIndividualReferralChannelEnum_USSD;
  @BuiltValueEnumConst(wireName: r'Internet Banking')
  static const BancassuranceIndividualReferralChannelEnum internetBanking = _$bancassuranceIndividualReferralChannelEnum_internetBanking;
  @BuiltValueEnumConst(wireName: r'Mobile App')
  static const BancassuranceIndividualReferralChannelEnum mobileApp = _$bancassuranceIndividualReferralChannelEnum_mobileApp;
  @BuiltValueEnumConst(wireName: r'Leo')
  static const BancassuranceIndividualReferralChannelEnum leo = _$bancassuranceIndividualReferralChannelEnum_leo;

  static Serializer<BancassuranceIndividualReferralChannelEnum> get serializer => _$bancassuranceIndividualReferralChannelEnumSerializer;

  const BancassuranceIndividualReferralChannelEnum._(String name): super(name);

  static BuiltSet<BancassuranceIndividualReferralChannelEnum> get values => _$bancassuranceIndividualReferralChannelEnumValues;
  static BancassuranceIndividualReferralChannelEnum valueOf(String name) => _$bancassuranceIndividualReferralChannelEnumValueOf(name);
}

