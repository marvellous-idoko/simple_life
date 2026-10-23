//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uba_staff_referrer.g.dart';

/// UBAStaffReferrer
///
/// Properties:
/// * [ubaStaffReferrerId] 
/// * [referrerName] 
/// * [referrerAccountNumber] 
@BuiltValue()
abstract class UBAStaffReferrer implements Built<UBAStaffReferrer, UBAStaffReferrerBuilder> {
  @BuiltValueField(wireName: r'ubaStaffReferrerId')
  String? get ubaStaffReferrerId;

  @BuiltValueField(wireName: r'referrerName')
  String? get referrerName;

  @BuiltValueField(wireName: r'referrerAccountNumber')
  String? get referrerAccountNumber;

  UBAStaffReferrer._();

  factory UBAStaffReferrer([void updates(UBAStaffReferrerBuilder b)]) = _$UBAStaffReferrer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UBAStaffReferrerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UBAStaffReferrer> get serializer => _$UBAStaffReferrerSerializer();
}

class _$UBAStaffReferrerSerializer implements PrimitiveSerializer<UBAStaffReferrer> {
  @override
  final Iterable<Type> types = const [UBAStaffReferrer, _$UBAStaffReferrer];

  @override
  final String wireName = r'UBAStaffReferrer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UBAStaffReferrer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ubaStaffReferrerId != null) {
      yield r'ubaStaffReferrerId';
      yield serializers.serialize(
        object.ubaStaffReferrerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.referrerName != null) {
      yield r'referrerName';
      yield serializers.serialize(
        object.referrerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.referrerAccountNumber != null) {
      yield r'referrerAccountNumber';
      yield serializers.serialize(
        object.referrerAccountNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UBAStaffReferrer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UBAStaffReferrerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ubaStaffReferrerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ubaStaffReferrerId = valueDes;
          break;
        case r'referrerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referrerName = valueDes;
          break;
        case r'referrerAccountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referrerAccountNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UBAStaffReferrer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UBAStaffReferrerBuilder();
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


