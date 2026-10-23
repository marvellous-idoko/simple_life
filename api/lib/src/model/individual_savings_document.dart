//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/individual_protection_document_basic.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/beneficiary_share.dart';
import 'package:openapi/src/model/rider.dart';
import 'package:openapi/src/model/individual_protection_document.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'individual_savings_document.g.dart';

/// IndividualSavingsDocument
///
/// Properties:
/// * [customerId] 
/// * [policyName] 
/// * [policyId] 
/// * [personId] 
/// * [policyClass] 
/// * [basic] 
/// * [riders] 
/// * [shares] 
/// * [contribution] 
@BuiltValue()
abstract class IndividualSavingsDocument implements IndividualProtectionDocument, Built<IndividualSavingsDocument, IndividualSavingsDocumentBuilder> {
  @BuiltValueField(wireName: r'contribution')
  num get contribution;

  IndividualSavingsDocument._();

  factory IndividualSavingsDocument([void updates(IndividualSavingsDocumentBuilder b)]) = _$IndividualSavingsDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndividualSavingsDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndividualSavingsDocument> get serializer => _$IndividualSavingsDocumentSerializer();
}

class _$IndividualSavingsDocumentSerializer implements PrimitiveSerializer<IndividualSavingsDocument> {
  @override
  final Iterable<Type> types = const [IndividualSavingsDocument, _$IndividualSavingsDocument];

  @override
  final String wireName = r'IndividualSavingsDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndividualSavingsDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'policyClass';
    yield serializers.serialize(
      object.policyClass,
      specifiedType: const FullType(String),
    );
    yield r'shares';
    yield serializers.serialize(
      object.shares,
      specifiedType: const FullType(BuiltList, [FullType(BeneficiaryShare)]),
    );
    yield r'contribution';
    yield serializers.serialize(
      object.contribution,
      specifiedType: const FullType(num),
    );
    yield r'policyId';
    yield serializers.serialize(
      object.policyId,
      specifiedType: const FullType(String),
    );
    yield r'policyName';
    yield serializers.serialize(
      object.policyName,
      specifiedType: const FullType(String),
    );
    yield r'riders';
    yield serializers.serialize(
      object.riders,
      specifiedType: const FullType(BuiltList, [FullType(Rider)]),
    );
    yield r'customerId';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(String),
    );
    yield r'personId';
    yield serializers.serialize(
      object.personId,
      specifiedType: const FullType(String),
    );
    yield r'basic';
    yield serializers.serialize(
      object.basic,
      specifiedType: const FullType(IndividualProtectionDocumentBasic),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IndividualSavingsDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndividualSavingsDocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'policyClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyClass = valueDes;
          break;
        case r'shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BeneficiaryShare)]),
          ) as BuiltList<BeneficiaryShare>;
          result.shares.replace(valueDes);
          break;
        case r'contribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.contribution = valueDes;
          break;
        case r'policyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyId = valueDes;
          break;
        case r'policyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyName = valueDes;
          break;
        case r'riders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Rider)]),
          ) as BuiltList<Rider>;
          result.riders.replace(valueDes);
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'basic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndividualProtectionDocumentBasic),
          ) as IndividualProtectionDocumentBasic;
          result.basic.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndividualSavingsDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndividualSavingsDocumentBuilder();
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


