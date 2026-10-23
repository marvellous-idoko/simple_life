//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cargo_document_cargoes_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cargo_document.g.dart';

/// CargoDocument
///
/// Properties:
/// * [customerId] 
/// * [cargoes] 
@BuiltValue()
abstract class CargoDocument implements Built<CargoDocument, CargoDocumentBuilder> {
  @BuiltValueField(wireName: r'customerId')
  String? get customerId;

  @BuiltValueField(wireName: r'cargoes')
  BuiltList<CargoDocumentCargoesInner>? get cargoes;

  CargoDocument._();

  factory CargoDocument([void updates(CargoDocumentBuilder b)]) = _$CargoDocument;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CargoDocumentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CargoDocument> get serializer => _$CargoDocumentSerializer();
}

class _$CargoDocumentSerializer implements PrimitiveSerializer<CargoDocument> {
  @override
  final Iterable<Type> types = const [CargoDocument, _$CargoDocument];

  @override
  final String wireName = r'CargoDocument';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CargoDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.cargoes != null) {
      yield r'cargoes';
      yield serializers.serialize(
        object.cargoes,
        specifiedType: const FullType(BuiltList, [FullType(CargoDocumentCargoesInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CargoDocument object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CargoDocumentBuilder result,
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
        case r'cargoes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(CargoDocumentCargoesInner)]),
          ) as BuiltList<CargoDocumentCargoesInner>?;
          if (valueDes == null) continue;
          result.cargoes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CargoDocument deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CargoDocumentBuilder();
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


