//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claimant_cost.g.dart';

/// ClaimantCost
///
/// Properties:
/// * [amount] 
/// * [provider] 
/// * [description] 
/// * [date] 
/// * [currency] 
/// * [exchangeRate] 
/// * [providerType] 
@BuiltValue()
abstract class ClaimantCost implements Built<ClaimantCost, ClaimantCostBuilder> {
  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'provider')
  String? get provider;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'currency')
  ClaimantCostCurrencyEnum? get currency;
  // enum currencyEnum {  EUR,  USD,  GBP,  JPY,  ZAR,  CNY,  NGN,  };

  @BuiltValueField(wireName: r'exchangeRate')
  num? get exchangeRate;

  @BuiltValueField(wireName: r'providerType')
  ClaimantCostProviderTypeEnum? get providerType;
  // enum providerTypeEnum {  Customer,  Back Office,  Internal Loss Adjuster,  External Loss Adjuster,  Claims Unit,  Vendor,  Agent,  System,  };

  ClaimantCost._();

  factory ClaimantCost([void updates(ClaimantCostBuilder b)]) = _$ClaimantCost;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimantCostBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimantCost> get serializer => _$ClaimantCostSerializer();
}

class _$ClaimantCostSerializer implements PrimitiveSerializer<ClaimantCost> {
  @override
  final Iterable<Type> types = const [ClaimantCost, _$ClaimantCost];

  @override
  final String wireName = r'ClaimantCost';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimantCost object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(ClaimantCostCurrencyEnum),
      );
    }
    if (object.exchangeRate != null) {
      yield r'exchangeRate';
      yield serializers.serialize(
        object.exchangeRate,
        specifiedType: const FullType(num),
      );
    }
    if (object.providerType != null) {
      yield r'providerType';
      yield serializers.serialize(
        object.providerType,
        specifiedType: const FullType(ClaimantCostProviderTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimantCost object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimantCostBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.provider = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ClaimantCostCurrencyEnum),
          ) as ClaimantCostCurrencyEnum?;
          if (valueDes == null) continue;
          result.currency = valueDes;
          break;
        case r'exchangeRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.exchangeRate = valueDes;
          break;
        case r'providerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ClaimantCostProviderTypeEnum),
          ) as ClaimantCostProviderTypeEnum?;
          if (valueDes == null) continue;
          result.providerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimantCost deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimantCostBuilder();
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


class ClaimantCostCurrencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EUR')
  static const ClaimantCostCurrencyEnum EUR = _$claimantCostCurrencyEnum_EUR;
  @BuiltValueEnumConst(wireName: r'USD')
  static const ClaimantCostCurrencyEnum USD = _$claimantCostCurrencyEnum_USD;
  @BuiltValueEnumConst(wireName: r'GBP')
  static const ClaimantCostCurrencyEnum GBP = _$claimantCostCurrencyEnum_GBP;
  @BuiltValueEnumConst(wireName: r'JPY')
  static const ClaimantCostCurrencyEnum JPY = _$claimantCostCurrencyEnum_JPY;
  @BuiltValueEnumConst(wireName: r'ZAR')
  static const ClaimantCostCurrencyEnum ZAR = _$claimantCostCurrencyEnum_ZAR;
  @BuiltValueEnumConst(wireName: r'CNY')
  static const ClaimantCostCurrencyEnum CNY = _$claimantCostCurrencyEnum_CNY;
  @BuiltValueEnumConst(wireName: r'NGN')
  static const ClaimantCostCurrencyEnum NGN = _$claimantCostCurrencyEnum_NGN;

  static Serializer<ClaimantCostCurrencyEnum> get serializer => _$claimantCostCurrencyEnumSerializer;

  const ClaimantCostCurrencyEnum._(String name): super(name);

  static BuiltSet<ClaimantCostCurrencyEnum> get values => _$claimantCostCurrencyEnumValues;
  static ClaimantCostCurrencyEnum valueOf(String name) => _$claimantCostCurrencyEnumValueOf(name);
}

class ClaimantCostProviderTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Customer')
  static const ClaimantCostProviderTypeEnum customer = _$claimantCostProviderTypeEnum_customer;
  @BuiltValueEnumConst(wireName: r'Back Office')
  static const ClaimantCostProviderTypeEnum backOffice = _$claimantCostProviderTypeEnum_backOffice;
  @BuiltValueEnumConst(wireName: r'Internal Loss Adjuster')
  static const ClaimantCostProviderTypeEnum internalLossAdjuster = _$claimantCostProviderTypeEnum_internalLossAdjuster;
  @BuiltValueEnumConst(wireName: r'External Loss Adjuster')
  static const ClaimantCostProviderTypeEnum externalLossAdjuster = _$claimantCostProviderTypeEnum_externalLossAdjuster;
  @BuiltValueEnumConst(wireName: r'Claims Unit')
  static const ClaimantCostProviderTypeEnum claimsUnit = _$claimantCostProviderTypeEnum_claimsUnit;
  @BuiltValueEnumConst(wireName: r'Vendor')
  static const ClaimantCostProviderTypeEnum vendor = _$claimantCostProviderTypeEnum_vendor;
  @BuiltValueEnumConst(wireName: r'Agent')
  static const ClaimantCostProviderTypeEnum agent = _$claimantCostProviderTypeEnum_agent;
  @BuiltValueEnumConst(wireName: r'System')
  static const ClaimantCostProviderTypeEnum system = _$claimantCostProviderTypeEnum_system;

  static Serializer<ClaimantCostProviderTypeEnum> get serializer => _$claimantCostProviderTypeEnumSerializer;

  const ClaimantCostProviderTypeEnum._(String name): super(name);

  static BuiltSet<ClaimantCostProviderTypeEnum> get values => _$claimantCostProviderTypeEnumValues;
  static ClaimantCostProviderTypeEnum valueOf(String name) => _$claimantCostProviderTypeEnumValueOf(name);
}

