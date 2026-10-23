//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bancassurance_non_customer_referral.g.dart';

/// BancassuranceNonCustomerReferral
///
/// Properties:
/// * [customerName] 
/// * [referredProduct] 
/// * [phone] 
/// * [email] 
/// * [branchName] 
/// * [branchId] 
/// * [referrerName] 
/// * [referrerAccountNumber] 
/// * [channel] 
/// * [uniqueReferralNumber] 
@BuiltValue()
abstract class BancassuranceNonCustomerReferral implements Built<BancassuranceNonCustomerReferral, BancassuranceNonCustomerReferralBuilder> {
  @BuiltValueField(wireName: r'customerName')
  String? get customerName;

  @BuiltValueField(wireName: r'referredProduct')
  String? get referredProduct;

  @BuiltValueField(wireName: r'phone')
  String? get phone;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'branchName')
  String? get branchName;

  @BuiltValueField(wireName: r'branchId')
  String? get branchId;

  @BuiltValueField(wireName: r'referrerName')
  String? get referrerName;

  @BuiltValueField(wireName: r'referrerAccountNumber')
  num? get referrerAccountNumber;

  @BuiltValueField(wireName: r'channel')
  BancassuranceNonCustomerReferralChannelEnum? get channel;
  // enum channelEnum {  Branch,  USSD,  Internet Banking,  Mobile App,  Leo,  };

  @BuiltValueField(wireName: r'uniqueReferralNumber')
  String? get uniqueReferralNumber;

  BancassuranceNonCustomerReferral._();

  factory BancassuranceNonCustomerReferral([void updates(BancassuranceNonCustomerReferralBuilder b)]) = _$BancassuranceNonCustomerReferral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BancassuranceNonCustomerReferralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BancassuranceNonCustomerReferral> get serializer => _$BancassuranceNonCustomerReferralSerializer();
}

class _$BancassuranceNonCustomerReferralSerializer implements PrimitiveSerializer<BancassuranceNonCustomerReferral> {
  @override
  final Iterable<Type> types = const [BancassuranceNonCustomerReferral, _$BancassuranceNonCustomerReferral];

  @override
  final String wireName = r'BancassuranceNonCustomerReferral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BancassuranceNonCustomerReferral object, {
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
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
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
        specifiedType: const FullType(BancassuranceNonCustomerReferralChannelEnum),
      );
    }
    if (object.uniqueReferralNumber != null) {
      yield r'uniqueReferralNumber';
      yield serializers.serialize(
        object.uniqueReferralNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BancassuranceNonCustomerReferral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BancassuranceNonCustomerReferralBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
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
            specifiedType: const FullType.nullable(BancassuranceNonCustomerReferralChannelEnum),
          ) as BancassuranceNonCustomerReferralChannelEnum?;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BancassuranceNonCustomerReferral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BancassuranceNonCustomerReferralBuilder();
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


class BancassuranceNonCustomerReferralChannelEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Branch')
  static const BancassuranceNonCustomerReferralChannelEnum branch = _$bancassuranceNonCustomerReferralChannelEnum_branch;
  @BuiltValueEnumConst(wireName: r'USSD')
  static const BancassuranceNonCustomerReferralChannelEnum USSD = _$bancassuranceNonCustomerReferralChannelEnum_USSD;
  @BuiltValueEnumConst(wireName: r'Internet Banking')
  static const BancassuranceNonCustomerReferralChannelEnum internetBanking = _$bancassuranceNonCustomerReferralChannelEnum_internetBanking;
  @BuiltValueEnumConst(wireName: r'Mobile App')
  static const BancassuranceNonCustomerReferralChannelEnum mobileApp = _$bancassuranceNonCustomerReferralChannelEnum_mobileApp;
  @BuiltValueEnumConst(wireName: r'Leo')
  static const BancassuranceNonCustomerReferralChannelEnum leo = _$bancassuranceNonCustomerReferralChannelEnum_leo;

  static Serializer<BancassuranceNonCustomerReferralChannelEnum> get serializer => _$bancassuranceNonCustomerReferralChannelEnumSerializer;

  const BancassuranceNonCustomerReferralChannelEnum._(String name): super(name);

  static BuiltSet<BancassuranceNonCustomerReferralChannelEnum> get values => _$bancassuranceNonCustomerReferralChannelEnumValues;
  static BancassuranceNonCustomerReferralChannelEnum valueOf(String name) => _$bancassuranceNonCustomerReferralChannelEnumValueOf(name);
}

