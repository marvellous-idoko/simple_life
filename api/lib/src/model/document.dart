//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/document_interests_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document.g.dart';

/// Document
///
/// Properties:
/// * [customerId] 
/// * [policyName] 
/// * [policyId] 
/// * [policyClass] 
/// * [interests] 
@BuiltValue()
abstract class Document implements Built<Document, DocumentBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'policyName')
  String? get policyName;

  @BuiltValueField(wireName: r'policyId')
  String? get policyId;

  @BuiltValueField(wireName: r'policyClass')
  String? get policyClass;

  @BuiltValueField(wireName: r'interests')
  BuiltList<DocumentInterestsInner>? get interests;

  Document._();

  factory Document([void updates(DocumentBuilder b)]) = _$Document;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Document> get serializer => _$DocumentSerializer();
}

class _$DocumentSerializer implements PrimitiveSerializer<Document> {
  @override
  final Iterable<Type> types = const [Document, _$Document];

  @override
  final String wireName = r'Document';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Document object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyName != null) {
      yield r'policyName';
      yield serializers.serialize(
        object.policyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyId != null) {
      yield r'policyId';
      yield serializers.serialize(
        object.policyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyClass != null) {
      yield r'policyClass';
      yield serializers.serialize(
        object.policyClass,
        specifiedType: const FullType(String),
      );
    }
    if (object.interests != null) {
      yield r'interests';
      yield serializers.serialize(
        object.interests,
        specifiedType: const FullType(BuiltList, [FullType(DocumentInterestsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Document object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DocumentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerId = valueDes;
          break;
        case r'policyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyName = valueDes;
          break;
        case r'policyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyId = valueDes;
          break;
        case r'policyClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyClass = valueDes;
          break;
        case r'interests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DocumentInterestsInner)]),
          ) as BuiltList<DocumentInterestsInner>?;
          if (valueDes == null) continue;
          result.interests.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Document deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentBuilder();
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


