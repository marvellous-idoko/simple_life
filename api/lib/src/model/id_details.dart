//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'id_details.g.dart';

/// IdDetails
///
/// Properties:
/// * [number] 
/// * [expiry] 
/// * [type] 
@BuiltValue()
abstract class IdDetails implements Built<IdDetails, IdDetailsBuilder> {
  @BuiltValueField(wireName: r'number')
  String get number;

  @BuiltValueField(wireName: r'expiry')
  String get expiry;

  @BuiltValueField(wireName: r'type')
  IdDetailsTypeEnum get type;
  // enum typeEnum {  driversLicense,  internationalPassport,  bvn,  votersCard,  nimc,  };

  IdDetails._();

  factory IdDetails([void updates(IdDetailsBuilder b)]) = _$IdDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IdDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IdDetails> get serializer => _$IdDetailsSerializer();
}

class _$IdDetailsSerializer implements PrimitiveSerializer<IdDetails> {
  @override
  final Iterable<Type> types = const [IdDetails, _$IdDetails];

  @override
  final String wireName = r'IdDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IdDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'number';
    yield serializers.serialize(
      object.number,
      specifiedType: const FullType(String),
    );
    yield r'expiry';
    yield serializers.serialize(
      object.expiry,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IdDetailsTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IdDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IdDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.number = valueDes;
          break;
        case r'expiry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiry = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IdDetailsTypeEnum),
          ) as IdDetailsTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IdDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IdDetailsBuilder();
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


class IdDetailsTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'driversLicense')
  static const IdDetailsTypeEnum driversLicense = _$idDetailsTypeEnum_driversLicense;
  @BuiltValueEnumConst(wireName: r'internationalPassport')
  static const IdDetailsTypeEnum internationalPassport = _$idDetailsTypeEnum_internationalPassport;
  @BuiltValueEnumConst(wireName: r'bvn')
  static const IdDetailsTypeEnum bvn = _$idDetailsTypeEnum_bvn;
  @BuiltValueEnumConst(wireName: r'votersCard')
  static const IdDetailsTypeEnum votersCard = _$idDetailsTypeEnum_votersCard;
  @BuiltValueEnumConst(wireName: r'nimc')
  static const IdDetailsTypeEnum nimc = _$idDetailsTypeEnum_nimc;

  static Serializer<IdDetailsTypeEnum> get serializer => _$idDetailsTypeEnumSerializer;

  const IdDetailsTypeEnum._(String name): super(name);

  static BuiltSet<IdDetailsTypeEnum> get values => _$idDetailsTypeEnumValues;
  static IdDetailsTypeEnum valueOf(String name) => _$idDetailsTypeEnumValueOf(name);
}

