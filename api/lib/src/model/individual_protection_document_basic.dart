//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/rider.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'individual_protection_document_basic.g.dart';

/// IndividualProtectionDocumentBasic
///
/// Properties:
/// * [schema] 
@BuiltValue()
abstract class IndividualProtectionDocumentBasic implements Built<IndividualProtectionDocumentBasic, IndividualProtectionDocumentBasicBuilder> {
  @BuiltValueField(wireName: r'schema')
  Rider? get schema;

  IndividualProtectionDocumentBasic._();

  factory IndividualProtectionDocumentBasic([void updates(IndividualProtectionDocumentBasicBuilder b)]) = _$IndividualProtectionDocumentBasic;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IndividualProtectionDocumentBasicBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IndividualProtectionDocumentBasic> get serializer => _$IndividualProtectionDocumentBasicSerializer();
}

class _$IndividualProtectionDocumentBasicSerializer implements PrimitiveSerializer<IndividualProtectionDocumentBasic> {
  @override
  final Iterable<Type> types = const [IndividualProtectionDocumentBasic, _$IndividualProtectionDocumentBasic];

  @override
  final String wireName = r'IndividualProtectionDocumentBasic';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IndividualProtectionDocumentBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schema != null) {
      yield r'schema';
      yield serializers.serialize(
        object.schema,
        specifiedType: const FullType(Rider),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IndividualProtectionDocumentBasic object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IndividualProtectionDocumentBasicBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schema':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Rider),
          ) as Rider?;
          if (valueDes == null) continue;
          result.schema.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IndividualProtectionDocumentBasic deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IndividualProtectionDocumentBasicBuilder();
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


