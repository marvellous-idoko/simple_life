//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_lgas200_response_inner.g.dart';

/// GetLgas200ResponseInner
///
/// Properties:
/// * [lga] 
/// * [lgaId] 
@BuiltValue()
abstract class GetLgas200ResponseInner implements Built<GetLgas200ResponseInner, GetLgas200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'lga')
  String? get lga;

  @BuiltValueField(wireName: r'lgaId')
  String? get lgaId;

  GetLgas200ResponseInner._();

  factory GetLgas200ResponseInner([void updates(GetLgas200ResponseInnerBuilder b)]) = _$GetLgas200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetLgas200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetLgas200ResponseInner> get serializer => _$GetLgas200ResponseInnerSerializer();
}

class _$GetLgas200ResponseInnerSerializer implements PrimitiveSerializer<GetLgas200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetLgas200ResponseInner, _$GetLgas200ResponseInner];

  @override
  final String wireName = r'GetLgas200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetLgas200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.lga != null) {
      yield r'lga';
      yield serializers.serialize(
        object.lga,
        specifiedType: const FullType(String),
      );
    }
    if (object.lgaId != null) {
      yield r'lgaId';
      yield serializers.serialize(
        object.lgaId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetLgas200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetLgas200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'lga':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lga = valueDes;
          break;
        case r'lgaId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.lgaId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetLgas200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetLgas200ResponseInnerBuilder();
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


