//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'annuitant_item.g.dart';

/// AnnuitantItem
///
/// Properties:
/// * [annuityId] 
/// * [personId] 
/// * [commission] 
/// * [guarantyPeriod] 
/// * [source_] 
/// * [premium] 
/// * [address] 
/// * [pfa] 
/// * [rsaPin] 
/// * [retirementDate] 
/// * [bank] 
/// * [accountNumber] 
/// * [accountName] 
/// * [frequency] 
/// * [businessType] 
/// * [businessChannel] 
/// * [annuityRateType] 
@BuiltValue()
abstract class AnnuitantItem implements Built<AnnuitantItem, AnnuitantItemBuilder> {
  @BuiltValueField(wireName: r'annuityId')
  String? get annuityId;

  @BuiltValueField(wireName: r'personId')
  String? get personId;

  @BuiltValueField(wireName: r'commission')
  String? get commission;

  @BuiltValueField(wireName: r'guarantyPeriod')
  num? get guarantyPeriod;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'address')
  String? get address;

  @BuiltValueField(wireName: r'pfa')
  String? get pfa;

  @BuiltValueField(wireName: r'rsaPin')
  String? get rsaPin;

  @BuiltValueField(wireName: r'retirementDate')
  String? get retirementDate;

  @BuiltValueField(wireName: r'bank')
  String? get bank;

  @BuiltValueField(wireName: r'accountNumber')
  String? get accountNumber;

  @BuiltValueField(wireName: r'accountName')
  String? get accountName;

  @BuiltValueField(wireName: r'frequency')
  String? get frequency;

  @BuiltValueField(wireName: r'businessType')
  String? get businessType;

  @BuiltValueField(wireName: r'businessChannel')
  String? get businessChannel;

  @BuiltValueField(wireName: r'annuityRateType')
  String? get annuityRateType;

  AnnuitantItem._();

  factory AnnuitantItem([void updates(AnnuitantItemBuilder b)]) = _$AnnuitantItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnnuitantItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnnuitantItem> get serializer => _$AnnuitantItemSerializer();
}

class _$AnnuitantItemSerializer implements PrimitiveSerializer<AnnuitantItem> {
  @override
  final Iterable<Type> types = const [AnnuitantItem, _$AnnuitantItem];

  @override
  final String wireName = r'AnnuitantItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnnuitantItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.annuityId != null) {
      yield r'annuityId';
      yield serializers.serialize(
        object.annuityId,
        specifiedType: const FullType(String),
      );
    }
    if (object.personId != null) {
      yield r'personId';
      yield serializers.serialize(
        object.personId,
        specifiedType: const FullType(String),
      );
    }
    if (object.commission != null) {
      yield r'commission';
      yield serializers.serialize(
        object.commission,
        specifiedType: const FullType(String),
      );
    }
    if (object.guarantyPeriod != null) {
      yield r'guarantyPeriod';
      yield serializers.serialize(
        object.guarantyPeriod,
        specifiedType: const FullType(num),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.address != null) {
      yield r'address';
      yield serializers.serialize(
        object.address,
        specifiedType: const FullType(String),
      );
    }
    if (object.pfa != null) {
      yield r'pfa';
      yield serializers.serialize(
        object.pfa,
        specifiedType: const FullType(String),
      );
    }
    if (object.rsaPin != null) {
      yield r'rsaPin';
      yield serializers.serialize(
        object.rsaPin,
        specifiedType: const FullType(String),
      );
    }
    if (object.retirementDate != null) {
      yield r'retirementDate';
      yield serializers.serialize(
        object.retirementDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.bank != null) {
      yield r'bank';
      yield serializers.serialize(
        object.bank,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountNumber != null) {
      yield r'accountNumber';
      yield serializers.serialize(
        object.accountNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountName != null) {
      yield r'accountName';
      yield serializers.serialize(
        object.accountName,
        specifiedType: const FullType(String),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.annuityRateType != null) {
      yield r'annuityRateType';
      yield serializers.serialize(
        object.annuityRateType,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AnnuitantItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnnuitantItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'annuityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.annuityId = valueDes;
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.personId = valueDes;
          break;
        case r'commission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.commission = valueDes;
          break;
        case r'guarantyPeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.guarantyPeriod = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.source_ = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'address':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.address = valueDes;
          break;
        case r'pfa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.pfa = valueDes;
          break;
        case r'rsaPin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.rsaPin = valueDes;
          break;
        case r'retirementDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.retirementDate = valueDes;
          break;
        case r'bank':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bank = valueDes;
          break;
        case r'accountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountNumber = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accountName = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.frequency = valueDes;
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
        case r'annuityRateType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.annuityRateType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnnuitantItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnnuitantItemBuilder();
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


