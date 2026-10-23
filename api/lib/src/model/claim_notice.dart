//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'claim_notice.g.dart';

/// ClaimNotice
///
/// Properties:
/// * [claimId] 
/// * [description] 
/// * [location] 
/// * [causeOfLoss] 
/// * [causeOfLossValue] 
/// * [resultOfLoss] 
/// * [resultOfLossValue] 
/// * [policyNumber] 
/// * [policyName] 
/// * [dateOfIncident] 
@BuiltValue()
abstract class ClaimNotice implements Built<ClaimNotice, ClaimNoticeBuilder> {
  @BuiltValueField(wireName: r'claimId')
  String? get claimId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'location')
  String? get location;

  @BuiltValueField(wireName: r'causeOfLoss')
  num? get causeOfLoss;

  @BuiltValueField(wireName: r'causeOfLossValue')
  String? get causeOfLossValue;

  @BuiltValueField(wireName: r'resultOfLoss')
  num? get resultOfLoss;

  @BuiltValueField(wireName: r'resultOfLossValue')
  String? get resultOfLossValue;

  @BuiltValueField(wireName: r'policyNumber')
  String? get policyNumber;

  @BuiltValueField(wireName: r'policyName')
  String? get policyName;

  @BuiltValueField(wireName: r'dateOfIncident')
  Date? get dateOfIncident;

  ClaimNotice._();

  factory ClaimNotice([void updates(ClaimNoticeBuilder b)]) = _$ClaimNotice;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ClaimNoticeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ClaimNotice> get serializer => _$ClaimNoticeSerializer();
}

class _$ClaimNoticeSerializer implements PrimitiveSerializer<ClaimNotice> {
  @override
  final Iterable<Type> types = const [ClaimNotice, _$ClaimNotice];

  @override
  final String wireName = r'ClaimNotice';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ClaimNotice object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.claimId != null) {
      yield r'claimId';
      yield serializers.serialize(
        object.claimId,
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
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.causeOfLoss != null) {
      yield r'causeOfLoss';
      yield serializers.serialize(
        object.causeOfLoss,
        specifiedType: const FullType(num),
      );
    }
    if (object.causeOfLossValue != null) {
      yield r'causeOfLossValue';
      yield serializers.serialize(
        object.causeOfLossValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.resultOfLoss != null) {
      yield r'resultOfLoss';
      yield serializers.serialize(
        object.resultOfLoss,
        specifiedType: const FullType(num),
      );
    }
    if (object.resultOfLossValue != null) {
      yield r'resultOfLossValue';
      yield serializers.serialize(
        object.resultOfLossValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyNumber != null) {
      yield r'policyNumber';
      yield serializers.serialize(
        object.policyNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.policyName != null) {
      yield r'policyName';
      yield serializers.serialize(
        object.policyName,
        specifiedType: const FullType(String),
      );
    }
    if (object.dateOfIncident != null) {
      yield r'dateOfIncident';
      yield serializers.serialize(
        object.dateOfIncident,
        specifiedType: const FullType(Date),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ClaimNotice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ClaimNoticeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'claimId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.claimId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.location = valueDes;
          break;
        case r'causeOfLoss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.causeOfLoss = valueDes;
          break;
        case r'causeOfLossValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.causeOfLossValue = valueDes;
          break;
        case r'resultOfLoss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.resultOfLoss = valueDes;
          break;
        case r'resultOfLossValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resultOfLossValue = valueDes;
          break;
        case r'policyNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyNumber = valueDes;
          break;
        case r'policyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.policyName = valueDes;
          break;
        case r'dateOfIncident':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(Date),
          ) as Date?;
          if (valueDes == null) continue;
          result.dateOfIncident = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ClaimNotice deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClaimNoticeBuilder();
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


