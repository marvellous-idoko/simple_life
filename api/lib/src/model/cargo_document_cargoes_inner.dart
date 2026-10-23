//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cargo_document_cargoes_inner.g.dart';

/// CargoDocumentCargoesInner
///
/// Properties:
/// * [cargoId] 
@BuiltValue()
abstract class CargoDocumentCargoesInner implements Built<CargoDocumentCargoesInner, CargoDocumentCargoesInnerBuilder> {
  @BuiltValueField(wireName: r'cargoId')
  String? get cargoId;

  CargoDocumentCargoesInner._();

  factory CargoDocumentCargoesInner([void updates(CargoDocumentCargoesInnerBuilder b)]) = _$CargoDocumentCargoesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CargoDocumentCargoesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CargoDocumentCargoesInner> get serializer => _$CargoDocumentCargoesInnerSerializer();
}

class _$CargoDocumentCargoesInnerSerializer implements PrimitiveSerializer<CargoDocumentCargoesInner> {
  @override
  final Iterable<Type> types = const [CargoDocumentCargoesInner, _$CargoDocumentCargoesInner];

  @override
  final String wireName = r'CargoDocumentCargoesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CargoDocumentCargoesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cargoId != null) {
      yield r'cargoId';
      yield serializers.serialize(
        object.cargoId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CargoDocumentCargoesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CargoDocumentCargoesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cargoId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.cargoId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CargoDocumentCargoesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CargoDocumentCargoesInnerBuilder();
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


