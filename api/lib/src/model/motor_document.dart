//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/motor_document_motors_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'motor_document.g.dart';

/// MotorDocument
///
/// Properties:
/// * [customerId] 
/// * [motors] 
@BuiltValue()
abstract class MotorDocument implements Built<MotorDocument, MotorDocumentBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'motors')
  BuiltList<MotorDocumentMotorsInner>? get motors;

  MotorDocument._();

  factory MotorDocument([void updates(MotorDocumentBuilder b)]) = _$MotorDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MotorDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MotorDocument> get serializer => _$MotorDocumentSerializer();
}

class _$MotorDocumentSerializer implements PrimitiveSerializer<MotorDocument> {
  @override
  final Iterable<Type> types = const [MotorDocument, _$MotorDocument];

  @override
  final String wireName = r'MotorDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MotorDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.motors != null) {
      yield r'motors';
      yield serializers.serialize(
        object.motors,
        specifiedType: const FullType(BuiltList, [FullType(MotorDocumentMotorsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MotorDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MotorDocumentBuilder result,
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
        case r'motors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(MotorDocumentMotorsInner)]),
          ) as BuiltList<MotorDocumentMotorsInner>?;
          if (valueDes == null) continue;
          result.motors.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MotorDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MotorDocumentBuilder();
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


