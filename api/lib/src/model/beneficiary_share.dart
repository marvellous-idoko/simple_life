//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'beneficiary_share.g.dart';

/// BeneficiaryShare
///
/// Properties:
/// * [beneficiaryId] 
/// * [personId] 
/// * [share] 
@BuiltValue()
abstract class BeneficiaryShare implements Built<BeneficiaryShare, BeneficiaryShareBuilder> {
  @BuiltValueField(wireName: r'beneficiaryId')
  String? get beneficiaryId;

  @BuiltValueField(wireName: r'personId')
  String? get personId;

  @BuiltValueField(wireName: r'share')
  num? get share;

  BeneficiaryShare._();

  factory BeneficiaryShare([void updates(BeneficiaryShareBuilder b)]) = _$BeneficiaryShare;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BeneficiaryShareBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BeneficiaryShare> get serializer => _$BeneficiaryShareSerializer();
}

class _$BeneficiaryShareSerializer implements PrimitiveSerializer<BeneficiaryShare> {
  @override
  final Iterable<Type> types = const [BeneficiaryShare, _$BeneficiaryShare];

  @override
  final String wireName = r'BeneficiaryShare';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BeneficiaryShare object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.beneficiaryId != null) {
      yield r'beneficiaryId';
      yield serializers.serialize(
        object.beneficiaryId,
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
    if (object.share != null) {
      yield r'share';
      yield serializers.serialize(
        object.share,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BeneficiaryShare object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BeneficiaryShareBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'beneficiaryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.beneficiaryId = valueDes;
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.personId = valueDes;
          break;
        case r'share':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.share = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BeneficiaryShare deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BeneficiaryShareBuilder();
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


