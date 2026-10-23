//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_save_sum_assured_quote200_response_inner.g.dart';

/// GetSaveSumAssuredQuote200ResponseInner
///
/// Properties:
/// * [premium] 
/// * [contribution] 
/// * [frequency] 
@BuiltValue()
abstract class GetSaveSumAssuredQuote200ResponseInner implements Built<GetSaveSumAssuredQuote200ResponseInner, GetSaveSumAssuredQuote200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'premium')
  num? get premium;

  @BuiltValueField(wireName: r'contribution')
  num? get contribution;

  @BuiltValueField(wireName: r'frequency')
  String? get frequency;

  GetSaveSumAssuredQuote200ResponseInner._();

  factory GetSaveSumAssuredQuote200ResponseInner([void updates(GetSaveSumAssuredQuote200ResponseInnerBuilder b)]) = _$GetSaveSumAssuredQuote200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetSaveSumAssuredQuote200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetSaveSumAssuredQuote200ResponseInner> get serializer => _$GetSaveSumAssuredQuote200ResponseInnerSerializer();
}

class _$GetSaveSumAssuredQuote200ResponseInnerSerializer implements PrimitiveSerializer<GetSaveSumAssuredQuote200ResponseInner> {
  @override
  final Iterable<Type> types = const [GetSaveSumAssuredQuote200ResponseInner, _$GetSaveSumAssuredQuote200ResponseInner];

  @override
  final String wireName = r'GetSaveSumAssuredQuote200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetSaveSumAssuredQuote200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.premium != null) {
      yield r'premium';
      yield serializers.serialize(
        object.premium,
        specifiedType: const FullType(num),
      );
    }
    if (object.contribution != null) {
      yield r'contribution';
      yield serializers.serialize(
        object.contribution,
        specifiedType: const FullType(num),
      );
    }
    if (object.frequency != null) {
      yield r'frequency';
      yield serializers.serialize(
        object.frequency,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GetSaveSumAssuredQuote200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetSaveSumAssuredQuote200ResponseInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'premium':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.premium = valueDes;
          break;
        case r'contribution':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.contribution = valueDes;
          break;
        case r'frequency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  GetSaveSumAssuredQuote200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSaveSumAssuredQuote200ResponseInnerBuilder();
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


