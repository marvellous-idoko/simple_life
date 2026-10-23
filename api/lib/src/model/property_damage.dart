//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'dart:typed_data';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'property_damage.g.dart';

/// PropertyDamage
///
/// Properties:
/// * [damageId] 
/// * [owner] 
/// * [propertyType] 
/// * [propertyAddress] 
/// * [ownerAddress] 
/// * [ownerPhone] 
/// * [repairEstimate] 
/// * [file] 
@BuiltValue()
abstract class PropertyDamage implements Built<PropertyDamage, PropertyDamageBuilder> {
  @BuiltValueField(wireName: r'damageId')
  String? get damageId;

  @BuiltValueField(wireName: r'owner')
  String? get owner;

  @BuiltValueField(wireName: r'propertyType')
  String? get propertyType;

  @BuiltValueField(wireName: r'propertyAddress')
  String? get propertyAddress;

  @BuiltValueField(wireName: r'ownerAddress')
  String? get ownerAddress;

  @BuiltValueField(wireName: r'ownerPhone')
  String? get ownerPhone;

  @BuiltValueField(wireName: r'repairEstimate')
  num? get repairEstimate;

  @BuiltValueField(wireName: r'file')
  Uint8List? get file;

  PropertyDamage._();

  factory PropertyDamage([void updates(PropertyDamageBuilder b)]) = _$PropertyDamage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PropertyDamageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PropertyDamage> get serializer => _$PropertyDamageSerializer();
}

class _$PropertyDamageSerializer implements PrimitiveSerializer<PropertyDamage> {
  @override
  final Iterable<Type> types = const [PropertyDamage, _$PropertyDamage];

  @override
  final String wireName = r'PropertyDamage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PropertyDamage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.damageId != null) {
      yield r'damageId';
      yield serializers.serialize(
        object.damageId,
        specifiedType: const FullType(String),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
    if (object.propertyType != null) {
      yield r'propertyType';
      yield serializers.serialize(
        object.propertyType,
        specifiedType: const FullType(String),
      );
    }
    if (object.propertyAddress != null) {
      yield r'propertyAddress';
      yield serializers.serialize(
        object.propertyAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerAddress != null) {
      yield r'ownerAddress';
      yield serializers.serialize(
        object.ownerAddress,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerPhone != null) {
      yield r'ownerPhone';
      yield serializers.serialize(
        object.ownerPhone,
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
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(Uint8List),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PropertyDamage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PropertyDamageBuilder result,
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
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.owner = valueDes;
          break;
        case r'propertyType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.propertyType = valueDes;
          break;
        case r'propertyAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.propertyAddress = valueDes;
          break;
        case r'ownerAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerAddress = valueDes;
          break;
        case r'ownerPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerPhone = valueDes;
          break;
        case r'repairEstimate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.repairEstimate = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Uint8List),
          ) as Uint8List?;
          if (valueDes == null) continue;
          result.file = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PropertyDamage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PropertyDamageBuilder();
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


