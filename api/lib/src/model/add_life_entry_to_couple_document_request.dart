//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/death_cover.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_life_entry_to_couple_document_request.g.dart';

/// AddLifeEntryToCoupleDocumentRequest
///
/// Properties:
/// * [personId] 
/// * [businessType] 
/// * [businessChannel] 
/// * [sumAssured] 
/// * [term] 
/// * [frequency] 
/// * [contribution] 
@BuiltValue()
abstract class AddLifeEntryToCoupleDocumentRequest implements DeathCover, Built<AddLifeEntryToCoupleDocumentRequest, AddLifeEntryToCoupleDocumentRequestBuilder> {
  @BuiltValueField(wireName: r'contribution')
  num? get contribution;

  AddLifeEntryToCoupleDocumentRequest._();

  factory AddLifeEntryToCoupleDocumentRequest([void updates(AddLifeEntryToCoupleDocumentRequestBuilder b)]) = _$AddLifeEntryToCoupleDocumentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AddLifeEntryToCoupleDocumentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AddLifeEntryToCoupleDocumentRequest> get serializer => _$AddLifeEntryToCoupleDocumentRequestSerializer();
}

class _$AddLifeEntryToCoupleDocumentRequestSerializer implements PrimitiveSerializer<AddLifeEntryToCoupleDocumentRequest> {
  @override
  final Iterable<Type> types = const [AddLifeEntryToCoupleDocumentRequest, _$AddLifeEntryToCoupleDocumentRequest];

  @override
  final String wireName = r'AddLifeEntryToCoupleDocumentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AddLifeEntryToCoupleDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sumAssured';
    yield serializers.serialize(
      object.sumAssured,
      specifiedType: const FullType(num),
    );
    if (object.contribution != null) {
      yield r'contribution';
      yield serializers.serialize(
        object.contribution,
        specifiedType: const FullType(num),
      );
    }
    yield r'personId';
    yield serializers.serialize(
      object.personId,
      specifiedType: const FullType(String),
    );
    yield r'term';
    yield serializers.serialize(
      object.term,
      specifiedType: const FullType(num),
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
    yield r'frequency';
    yield serializers.serialize(
      object.frequency,
      specifiedType: const FullType(DeathCoverFrequencyEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AddLifeEntryToCoupleDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AddLifeEntryToCoupleDocumentRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sumAssured':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.sumAssured = valueDes;
          break;
        case r'contribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.contribution = valueDes;
          break;
        case r'personId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personId = valueDes;
          break;
        case r'term':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.term = valueDes;
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
  AddLifeEntryToCoupleDocumentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddLifeEntryToCoupleDocumentRequestBuilder();
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


class AddLifeEntryToCoupleDocumentRequestFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const AddLifeEntryToCoupleDocumentRequestFrequencyEnum monthly = _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const AddLifeEntryToCoupleDocumentRequestFrequencyEnum quarterly = _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const AddLifeEntryToCoupleDocumentRequestFrequencyEnum biannual = _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const AddLifeEntryToCoupleDocumentRequestFrequencyEnum annual = _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const AddLifeEntryToCoupleDocumentRequestFrequencyEnum single = _$addLifeEntryToCoupleDocumentRequestFrequencyEnum_single;

  static Serializer<AddLifeEntryToCoupleDocumentRequestFrequencyEnum> get serializer => _$addLifeEntryToCoupleDocumentRequestFrequencyEnumSerializer;

  const AddLifeEntryToCoupleDocumentRequestFrequencyEnum._(String name): super(name);

  static BuiltSet<AddLifeEntryToCoupleDocumentRequestFrequencyEnum> get values => _$addLifeEntryToCoupleDocumentRequestFrequencyEnumValues;
  static AddLifeEntryToCoupleDocumentRequestFrequencyEnum valueOf(String name) => _$addLifeEntryToCoupleDocumentRequestFrequencyEnumValueOf(name);
}

