//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_loss_comment.g.dart';

/// PreLossComment
///
/// Properties:
/// * [prelossCommentId] 
/// * [staffId] 
/// * [staffName] 
/// * [prelossComment] 
@BuiltValue()
abstract class PreLossComment implements Built<PreLossComment, PreLossCommentBuilder> {
  @BuiltValueField(wireName: r'prelossCommentId')
  String? get prelossCommentId;

  @BuiltValueField(wireName: r'staffId')
  String? get staffId;

  @BuiltValueField(wireName: r'staffName')
  String? get staffName;

  @BuiltValueField(wireName: r'prelossComment')
  String? get prelossComment;

  PreLossComment._();

  factory PreLossComment([void updates(PreLossCommentBuilder b)]) = _$PreLossComment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreLossCommentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreLossComment> get serializer => _$PreLossCommentSerializer();
}

class _$PreLossCommentSerializer implements PrimitiveSerializer<PreLossComment> {
  @override
  final Iterable<Type> types = const [PreLossComment, _$PreLossComment];

  @override
  final String wireName = r'PreLossComment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreLossComment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.prelossCommentId != null) {
      yield r'prelossCommentId';
      yield serializers.serialize(
        object.prelossCommentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.staffId != null) {
      yield r'staffId';
      yield serializers.serialize(
        object.staffId,
        specifiedType: const FullType(String),
      );
    }
    if (object.staffName != null) {
      yield r'staffName';
      yield serializers.serialize(
        object.staffName,
        specifiedType: const FullType(String),
      );
    }
    if (object.prelossComment != null) {
      yield r'prelossComment';
      yield serializers.serialize(
        object.prelossComment,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreLossComment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreLossCommentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prelossCommentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prelossCommentId = valueDes;
          break;
        case r'staffId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffId = valueDes;
          break;
        case r'staffName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.staffName = valueDes;
          break;
        case r'prelossComment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.prelossComment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreLossComment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreLossCommentBuilder();
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


