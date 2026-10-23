//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/death_cover.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_save_document_request.g.dart';

/// CreateSaveDocumentRequest
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
abstract class CreateSaveDocumentRequest implements DeathCover, Built<CreateSaveDocumentRequest, CreateSaveDocumentRequestBuilder> {
  @BuiltValueField(wireName: r'contribution')
  num? get contribution;

  CreateSaveDocumentRequest._();

  factory CreateSaveDocumentRequest([void updates(CreateSaveDocumentRequestBuilder b)]) = _$CreateSaveDocumentRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateSaveDocumentRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateSaveDocumentRequest> get serializer => _$CreateSaveDocumentRequestSerializer();
}

class _$CreateSaveDocumentRequestSerializer implements PrimitiveSerializer<CreateSaveDocumentRequest> {
  @override
  final Iterable<Type> types = const [CreateSaveDocumentRequest, _$CreateSaveDocumentRequest];

  @override
  final String wireName = r'CreateSaveDocumentRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateSaveDocumentRequest object, {
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
    CreateSaveDocumentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateSaveDocumentRequestBuilder result,
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
  CreateSaveDocumentRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSaveDocumentRequestBuilder();
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


class CreateSaveDocumentRequestFrequencyEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'monthly')
  static const CreateSaveDocumentRequestFrequencyEnum monthly = _$createSaveDocumentRequestFrequencyEnum_monthly;
  @BuiltValueEnumConst(wireName: r'quarterly')
  static const CreateSaveDocumentRequestFrequencyEnum quarterly = _$createSaveDocumentRequestFrequencyEnum_quarterly;
  @BuiltValueEnumConst(wireName: r'biannual')
  static const CreateSaveDocumentRequestFrequencyEnum biannual = _$createSaveDocumentRequestFrequencyEnum_biannual;
  @BuiltValueEnumConst(wireName: r'annual')
  static const CreateSaveDocumentRequestFrequencyEnum annual = _$createSaveDocumentRequestFrequencyEnum_annual;
  @BuiltValueEnumConst(wireName: r'single')
  static const CreateSaveDocumentRequestFrequencyEnum single = _$createSaveDocumentRequestFrequencyEnum_single;

  static Serializer<CreateSaveDocumentRequestFrequencyEnum> get serializer => _$createSaveDocumentRequestFrequencyEnumSerializer;

  const CreateSaveDocumentRequestFrequencyEnum._(String name): super(name);

  static BuiltSet<CreateSaveDocumentRequestFrequencyEnum> get values => _$createSaveDocumentRequestFrequencyEnumValues;
  static CreateSaveDocumentRequestFrequencyEnum valueOf(String name) => _$createSaveDocumentRequestFrequencyEnumValueOf(name);
}

