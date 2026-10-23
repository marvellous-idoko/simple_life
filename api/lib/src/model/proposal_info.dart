//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'proposal_info.g.dart';

/// ProposalInfo
///
/// Properties:
/// * [documentId] 
/// * [date] 
/// * [productName] 
/// * [company] 
/// * [policyHolder] 
/// * [premium] 
/// * [paymentCode] 
/// * [underwritingUrl] 
@BuiltValue()
abstract class ProposalInfo implements Built<ProposalInfo, ProposalInfoBuilder> {
  @BuiltValueField(wireName: r'documentId')
  String? get documentId;

  @BuiltValueField(wireName: r'date')
  String? get date;

  @BuiltValueField(wireName: r'productName')
  String? get productName;

  @BuiltValueField(wireName: r'company')
  String? get company;

  @BuiltValueField(wireName: r'policyHolder')
  String? get policyHolder;

  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'paymentCode')
  num? get paymentCode;

  @BuiltValueField(wireName: r'underwritingUrl')
  String? get underwritingUrl;

  ProposalInfo._();

  factory ProposalInfo([void updates(ProposalInfoBuilder b)]) = _$ProposalInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProposalInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProposalInfo> get serializer => _$ProposalInfoSerializer();
}

class _$ProposalInfoSerializer implements PrimitiveSerializer<ProposalInfo> {
  @override
  final Iterable<Type> types = const [ProposalInfo, _$ProposalInfo];

  @override
  final String wireName = r'ProposalInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProposalInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.documentId != null) {
      yield r'documentId';
      yield serializers.serialize(
        object.documentId,
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
    if (object.productName != null) {
      yield r'productName';
      yield serializers.serialize(
        object.productName,
        specifiedType: const FullType(String),
      );
    }
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyHolder != null) {
      yield r'policyHolder';
      yield serializers.serialize(
        object.policyHolder,
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
    if (object.paymentCode != null) {
      yield r'paymentCode';
      yield serializers.serialize(
        object.paymentCode,
        specifiedType: const FullType(num),
      );
    }
    if (object.underwritingUrl != null) {
      yield r'underwritingUrl';
      yield serializers.serialize(
        object.underwritingUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProposalInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProposalInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'documentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentId = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        case r'productName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.productName = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.company = valueDes;
          break;
        case r'policyHolder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyHolder = valueDes;
          break;
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'paymentCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.paymentCode = valueDes;
          break;
        case r'underwritingUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.underwritingUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProposalInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProposalInfoBuilder();
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


