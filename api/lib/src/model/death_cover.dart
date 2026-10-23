//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'death_cover.g.dart';

/// DeathCover
///
/// Properties:
/// * [personId] 
/// * [businessType] 
/// * [businessChannel] 
/// * [sumAssured] 
/// * [term] 
/// * [frequency] 
@BuiltValue(instantiable: false)
abstract class DeathCover  {
  @BuiltValueField(wireName: r'personId')
  String get personId;

  @BuiltValueField(wireName: r'businessType')
  String? get businessType;

  @BuiltValueField(wireName: r'businessChannel')
  String? get businessChannel;

  @BuiltValueField(wireName: r'sumAssured')
  num get sumAssured;

  @BuiltValueField(wireName: r'term')
  num get term;

  @BuiltValueField(wireName: r'frequency')
  DeathCoverFrequencyEnum get frequency;
  // enum frequencyEnum {  monthly,  quarterly,  biannual,  annual,  single,  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeathCover> get serializer => _$DeathCoverSerializer();
}

class _$DeathCoverSerializer implements PrimitiveSerializer<DeathCover> {
  @override
  final Iterable<Type> types = const [DeathCover];

  @override
  final String wireName = r'DeathCover';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeathCover object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'personId';
    yield serializers.serialize(
      object.personId,
      specifiedType: const FullType(String),
    );
    if (object.businessType != null) {
      yield r'businessType';
      yield serializers.serialize(
        object.businessType,
        specifiedType: const FullType(String),
      );
    }
    if (object.businessChannel != null) {
      yield r'businessChannel';
      yield serializers.serialize(
        object.businessChannel,
        specifiedType: const FullType(String),
      );
    }
    yield r'sumAssured';
    yield serializers.serialize(
      object.sumAssured,
      specifiedType: const FullType(num),
    );
    yield r'term';
    yield serializers.serialize(
      object.term,
      specifiedType: const FullType(num),
    );
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(DeathCoverFrequencyEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeathCover object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  DeathCover deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($DeathCover)) as $DeathCover;
  }
}


/// a concrete implementation of [DeathCover], since [DeathCover] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeathCover implements DeathCover, Built<$DeathCover, $DeathCoverBuilder> {
  $DeathCover._();

  factory $DeathCover([void Function($DeathCoverBuilder)? updates]) = _$$DeathCover;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeathCoverBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeathCover> get serializer => _$$DeathCoverSerializer();
}

class _$$DeathCoverSerializer implements PrimitiveSerializer<$DeathCover> {
  @override
  final Iterable<Type> types = const [$DeathCover, _$$DeathCover];

  @override
  final String wireName = r'$DeathCover';

  @override
  Object serialize(
    Serializers serializers,
    $DeathCover object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(DeathCover))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeathCoverBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'businessType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessType = valueDes;
          break;
        case r'businessChannel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.businessChannel = valueDes;
          break;
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.sumAssured = valueDes;
          break;
        case r'term':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.term = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeathCoverFrequencyEnum),
          ) as DeathCoverFrequencyEnum;
          result.frequency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $DeathCover deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeathCoverBuilder();
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

class DeathCoverFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const DeathCoverFrequencyEnum monthly = _$deathCoverFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const DeathCoverFrequencyEnum quarterly = _$deathCoverFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const DeathCoverFrequencyEnum biannual = _$deathCoverFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const DeathCoverFrequencyEnum annual = _$deathCoverFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const DeathCoverFrequencyEnum single = _$deathCoverFrequencyEnum_single;

  static Serializer<DeathCoverFrequencyEnum> get serializer => _$deathCoverFrequencyEnumSerializer;

  const DeathCoverFrequencyEnum._(String name): super(name);

  static BuiltSet<DeathCoverFrequencyEnum> get values => _$deathCoverFrequencyEnumValues;
  static DeathCoverFrequencyEnum valueOf(String name) => _$deathCoverFrequencyEnumValueOf(name);
}

