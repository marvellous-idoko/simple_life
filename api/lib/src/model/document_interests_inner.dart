//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_interests_inner.g.dart';

/// DocumentInterestsInner
///
/// Properties:
/// * [interestId] 
@BuiltValue()
abstract class DocumentInterestsInner implements Built<DocumentInterestsInner, DocumentInterestsInnerBuilder> {
  @BuiltValueField(wireName: r'interestId')
  String? get interestId;

  DocumentInterestsInner._();

  factory DocumentInterestsInner([void updates(DocumentInterestsInnerBuilder b)]) = _$DocumentInterestsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocumentInterestsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocumentInterestsInner> get serializer => _$DocumentInterestsInnerSerializer();
}

class _$DocumentInterestsInnerSerializer implements PrimitiveSerializer<DocumentInterestsInner> {
  @override
  final Iterable<Type> types = const [DocumentInterestsInner, _$DocumentInterestsInner];

  @override
  final String wireName = r'DocumentInterestsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocumentInterestsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.interestId != null) {
      yield r'interestId';
      yield serializers.serialize(
        object.interestId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DocumentInterestsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DocumentInterestsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'interestId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.interestId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DocumentInterestsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentInterestsInnerBuilder();
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


