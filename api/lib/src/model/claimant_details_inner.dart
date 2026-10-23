//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claimant_details_inner.g.dart';

/// ClaimantDetailsInner
///
/// Properties:
/// * [key] 
/// * [value] 
@BuiltValue()
abstract class ClaimantDetailsInner implements Built<ClaimantDetailsInner, ClaimantDetailsInnerBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  ClaimantDetailsInner._();

  factory ClaimantDetailsInner([void updates(ClaimantDetailsInnerBuilder b)]) = _$ClaimantDetailsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimantDetailsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimantDetailsInner> get serializer => _$ClaimantDetailsInnerSerializer();
}

class _$ClaimantDetailsInnerSerializer implements PrimitiveSerializer<ClaimantDetailsInner> {
  @override
  final Iterable<Type> types = const [ClaimantDetailsInner, _$ClaimantDetailsInner];

  @override
  final String wireName = r'ClaimantDetailsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimantDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimantDetailsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimantDetailsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimantDetailsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimantDetailsInnerBuilder();
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


