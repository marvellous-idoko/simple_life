//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_loss_query.g.dart';

/// PreLossQuery
///
/// Properties:
/// * [prelossCommentId] 
/// * [staffId] 
/// * [staffName] 
/// * [query] 
/// * [date] 
@BuiltValue()
abstract class PreLossQuery implements Built<PreLossQuery, PreLossQueryBuilder> {
  @BuiltValueField(wireName: r'prelossCommentId')
  String? get prelossCommentId;

  @BuiltValueField(wireName: r'staffId')
  String? get staffId;

  @BuiltValueField(wireName: r'staffName')
  String? get staffName;

  @BuiltValueField(wireName: r'query')
  String? get query;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  PreLossQuery._();

  factory PreLossQuery([void updates(PreLossQueryBuilder b)]) = _$PreLossQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreLossQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreLossQuery> get serializer => _$PreLossQuerySerializer();
}

class _$PreLossQuerySerializer implements PrimitiveSerializer<PreLossQuery> {
  @override
  final Iterable<Type> types = const [PreLossQuery, _$PreLossQuery];

  @override
  final String wireName = r'PreLossQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreLossQuery object, {
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
    if (object.query != null) {
      yield r'query';
      yield serializers.serialize(
        object.query,
        specifiedType: const FullType(String),
      );
    }
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PreLossQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PreLossQueryBuilder result,
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
        case r'query':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.query = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.date = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PreLossQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreLossQueryBuilder();
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


