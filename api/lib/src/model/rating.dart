//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating.g.dart';

/// Rating
///
/// Properties:
/// * [payId] 
/// * [rating] 
@BuiltValue()
abstract class Rating implements Built<Rating, RatingBuilder> {
  @BuiltValueField(wireName: r'payId')
  String? get payId;

  @BuiltValueField(wireName: r'rating')
  num? get rating;

  Rating._();

  factory Rating([void updates(RatingBuilder b)]) = _$Rating;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RatingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Rating> get serializer => _$RatingSerializer();
}

class _$RatingSerializer implements PrimitiveSerializer<Rating> {
  @override
  final Iterable<Type> types = const [Rating, _$Rating];

  @override
  final String wireName = r'Rating';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Rating object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payId != null) {
      yield r'payId';
      yield serializers.serialize(
        object.payId,
        specifiedType: const FullType(String),
      );
    }
    if (object.rating != null) {
      yield r'rating';
      yield serializers.serialize(
        object.rating,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Rating object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RatingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.payId = valueDes;
          break;
        case r'rating':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.rating = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Rating deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RatingBuilder();
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


