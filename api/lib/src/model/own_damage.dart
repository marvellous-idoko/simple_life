//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'own_damage.g.dart';

/// OwnDamage
///
/// Properties:
/// * [damageId] 
/// * [repairEstimate] 
@BuiltValue()
abstract class OwnDamage implements Built<OwnDamage, OwnDamageBuilder> {
  @BuiltValueField(wireName: r'damageId')
  String? get damageId;

  @BuiltValueField(wireName: r'repairEstimate')
  num? get repairEstimate;

  OwnDamage._();

  factory OwnDamage([void updates(OwnDamageBuilder b)]) = _$OwnDamage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OwnDamageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OwnDamage> get serializer => _$OwnDamageSerializer();
}

class _$OwnDamageSerializer implements PrimitiveSerializer<OwnDamage> {
  @override
  final Iterable<Type> types = const [OwnDamage, _$OwnDamage];

  @override
  final String wireName = r'OwnDamage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OwnDamage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.damageId != null) {
      yield r'damageId';
      yield serializers.serialize(
        object.damageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.repairEstimate != null) {
      yield r'repairEstimate';
      yield serializers.serialize(
        object.repairEstimate,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OwnDamage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OwnDamageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'damageId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.damageId = valueDes;
          break;
        case r'repairEstimate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.repairEstimate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OwnDamage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnDamageBuilder();
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


