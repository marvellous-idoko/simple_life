//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/individual_protection_document_basic.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/beneficiary_share.dart';
import 'package:openapi/src/model/rider.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'individual_protection_document.g.dart';

/// IndividualProtectionDocument
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
@BuiltValue(instantiable: false)
abstract class IndividualProtectionDocument  {
  @BuiltValueField(wireName: r'customerId')
  String get customerId;

  @BuiltValueField(wireName: r'policyName')
  String get policyName;

  @BuiltValueField(wireName: r'policyId')
  String get policyId;

  @BuiltValueField(wireName: r'personId')
  String get personId;

  @BuiltValueField(wireName: r'policyClass')
  String get policyClass;

  @BuiltValueField(wireName: r'basic')
  IndividualProtectionDocumentBasic get basic;

  @BuiltValueField(wireName: r'riders')
  BuiltList<Rider> get riders;

  @BuiltValueField(wireName: r'shares')
  BuiltList<BeneficiaryShare> get shares;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndividualProtectionDocument> get serializer => _$IndividualProtectionDocumentSerializer();
}

class _$IndividualProtectionDocumentSerializer implements PrimitiveSerializer<IndividualProtectionDocument> {
  @override
  final Iterable<Type> types = const [IndividualProtectionDocument];

  @override
  final String wireName = r'IndividualProtectionDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndividualProtectionDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'customerId';
    yield serializers.serialize(
      object.customerId,
      specifiedType: const FullType(String),
    );
    yield r'policyName';
    yield serializers.serialize(
      object.policyName,
      specifiedType: const FullType(String),
    );
    yield r'policyId';
    yield serializers.serialize(
      object.policyId,
      specifiedType: const FullType(String),
    );
    yield r'personId';
    yield serializers.serialize(
      object.personId,
      specifiedType: const FullType(String),
    );
    yield r'policyClass';
    yield serializers.serialize(
      object.policyClass,
      specifiedType: const FullType(String),
    );
    yield r'basic';
    yield serializers.serialize(
      object.basic,
      specifiedType: const FullType(IndividualProtectionDocumentBasic),
    );
    yield r'riders';
    yield serializers.serialize(
      object.riders,
      specifiedType: const FullType(BuiltList, [FullType(Rider)]),
    );
    yield r'shares';
    yield serializers.serialize(
      object.shares,
      specifiedType: const FullType(BuiltList, [FullType(BeneficiaryShare)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IndividualProtectionDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  IndividualProtectionDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($IndividualProtectionDocument)) as $IndividualProtectionDocument;
  }
}


/// a concrete implementation of [IndividualProtectionDocument], since [IndividualProtectionDocument] is not instantiable
@BuiltValue(instantiable: true)
abstract class $IndividualProtectionDocument implements IndividualProtectionDocument, Built<$IndividualProtectionDocument, $IndividualProtectionDocumentBuilder> {
  $IndividualProtectionDocument._();

  factory $IndividualProtectionDocument([void Function($IndividualProtectionDocumentBuilder)? updates]) = _$$IndividualProtectionDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($IndividualProtectionDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$IndividualProtectionDocument> get serializer => _$$IndividualProtectionDocumentSerializer();
}

class _$$IndividualProtectionDocumentSerializer implements PrimitiveSerializer<$IndividualProtectionDocument> {
  @override
  final Iterable<Type> types = const [$IndividualProtectionDocument, _$$IndividualProtectionDocument];

  @override
  final String wireName = r'$IndividualProtectionDocument';

  @override
  Object serialize(
    Serializers serializers,
    $IndividualProtectionDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(IndividualProtectionDocument))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndividualProtectionDocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerId = valueDes;
          break;
        case r'policyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyName = valueDes;
          break;
        case r'policyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyId = valueDes;
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'policyClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyClass = valueDes;
          break;
        case r'basic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IndividualProtectionDocumentBasic),
          ) as IndividualProtectionDocumentBasic;
          result.basic.replace(valueDes);
          break;
        case r'riders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Rider)]),
          ) as BuiltList<Rider>;
          result.riders.replace(valueDes);
          break;
        case r'shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BeneficiaryShare)]),
          ) as BuiltList<BeneficiaryShare>;
          result.shares.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $IndividualProtectionDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $IndividualProtectionDocumentBuilder();
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

