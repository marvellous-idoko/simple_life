//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eska_agent.g.dart';

/// EskaAgent
///
/// Properties:
/// * [level] 
/// * [levelId] 
/// * [name] 
/// * [lineManagerId] 
/// * [id] 
/// * [eskaCustomerId] 
@BuiltValue()
abstract class EskaAgent implements Built<EskaAgent, EskaAgentBuilder> {
  @BuiltValueField(wireName: r'level')
  String? get level;

  @BuiltValueField(wireName: r'levelId')
  num? get levelId;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'lineManagerId')
  num? get lineManagerId;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'eskaCustomerId')
  String? get eskaCustomerId;

  EskaAgent._();

  factory EskaAgent([void updates(EskaAgentBuilder b)]) = _$EskaAgent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EskaAgentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EskaAgent> get serializer => _$EskaAgentSerializer();
}

class _$EskaAgentSerializer implements PrimitiveSerializer<EskaAgent> {
  @override
  final Iterable<Type> types = const [EskaAgent, _$EskaAgent];

  @override
  final String wireName = r'EskaAgent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EskaAgent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.level != null) {
      yield r'level';
      yield serializers.serialize(
        object.level,
        specifiedType: const FullType(String),
      );
    }
    if (object.levelId != null) {
      yield r'levelId';
      yield serializers.serialize(
        object.levelId,
        specifiedType: const FullType(num),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.lineManagerId != null) {
      yield r'lineManagerId';
      yield serializers.serialize(
        object.lineManagerId,
        specifiedType: const FullType(num),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.eskaCustomerId != null) {
      yield r'eskaCustomerId';
      yield serializers.serialize(
        object.eskaCustomerId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EskaAgent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EskaAgentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'level':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.level = valueDes;
          break;
        case r'levelId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.levelId = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'lineManagerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.lineManagerId = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'eskaCustomerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.eskaCustomerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EskaAgent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EskaAgentBuilder();
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


