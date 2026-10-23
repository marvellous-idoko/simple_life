//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_info.g.dart';

/// ClaimInfo
///
/// Properties:
/// * [id] 
/// * [claimName] 
/// * [claimStatus] 
/// * [registrationDate] 
/// * [description] 
/// * [claimNumber] 
/// * [company] 
@BuiltValue()
abstract class ClaimInfo implements Built<ClaimInfo, ClaimInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'claimName')
  String? get claimName;

  @BuiltValueField(wireName: r'claimStatus')
  String? get claimStatus;

  @BuiltValueField(wireName: r'registrationDate')
  String? get registrationDate;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'claimNumber')
  String? get claimNumber;

  @BuiltValueField(wireName: r'company')
  String? get company;

  ClaimInfo._();

  factory ClaimInfo([void updates(ClaimInfoBuilder b)]) = _$ClaimInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimInfo> get serializer => _$ClaimInfoSerializer();
}

class _$ClaimInfoSerializer implements PrimitiveSerializer<ClaimInfo> {
  @override
  final Iterable<Type> types = const [ClaimInfo, _$ClaimInfo];

  @override
  final String wireName = r'ClaimInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.claimName != null) {
      yield r'claimName';
      yield serializers.serialize(
        object.claimName,
        specifiedType: const FullType(String),
      );
    }
    if (object.claimStatus != null) {
      yield r'claimStatus';
      yield serializers.serialize(
        object.claimStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.registrationDate != null) {
      yield r'registrationDate';
      yield serializers.serialize(
        object.registrationDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.claimNumber != null) {
      yield r'claimNumber';
      yield serializers.serialize(
        object.claimNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.company != null) {
      yield r'company';
      yield serializers.serialize(
        object.company,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'claimName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimName = valueDes;
          break;
        case r'claimStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimStatus = valueDes;
          break;
        case r'registrationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.registrationDate = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'claimNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimNumber = valueDes;
          break;
        case r'company':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.company = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimInfoBuilder();
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


