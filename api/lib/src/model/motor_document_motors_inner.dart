//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'motor_document_motors_inner.g.dart';

/// MotorDocumentMotorsInner
///
/// Properties:
/// * [motorId] 
@BuiltValue()
abstract class MotorDocumentMotorsInner implements Built<MotorDocumentMotorsInner, MotorDocumentMotorsInnerBuilder> {
  @BuiltValueField(wireName: r'motorId')
  String? get motorId;

  MotorDocumentMotorsInner._();

  factory MotorDocumentMotorsInner([void updates(MotorDocumentMotorsInnerBuilder b)]) = _$MotorDocumentMotorsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MotorDocumentMotorsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MotorDocumentMotorsInner> get serializer => _$MotorDocumentMotorsInnerSerializer();
}

class _$MotorDocumentMotorsInnerSerializer implements PrimitiveSerializer<MotorDocumentMotorsInner> {
  @override
  final Iterable<Type> types = const [MotorDocumentMotorsInner, _$MotorDocumentMotorsInner];

  @override
  final String wireName = r'MotorDocumentMotorsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MotorDocumentMotorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.motorId != null) {
      yield r'motorId';
      yield serializers.serialize(
        object.motorId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MotorDocumentMotorsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MotorDocumentMotorsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'motorId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.motorId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MotorDocumentMotorsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MotorDocumentMotorsInnerBuilder();
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


