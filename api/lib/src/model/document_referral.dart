//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_referral.g.dart';

/// DocumentReferral
///
/// Properties:
/// * [referralId] 
/// * [ubaReferralId] - Id of customer, corporate or non customer.
/// * [branchId] 
/// * [branchName] 
/// * [referrerName] 
/// * [referrerAccountNumber] 
/// * [documentId] 
/// * [productId] 
@BuiltValue()
abstract class DocumentReferral implements Built<DocumentReferral, DocumentReferralBuilder> {
  @BuiltValueField(wireName: r'referralId')
  String? get referralId;

  /// Id of customer, corporate or non customer.
  @BuiltValueField(wireName: r'ubaReferralId')
  String? get ubaReferralId;

  @BuiltValueField(wireName: r'branchId')
  String? get branchId;

  @BuiltValueField(wireName: r'branchName')
  String? get branchName;

  @BuiltValueField(wireName: r'referrerName')
  String? get referrerName;

  @BuiltValueField(wireName: r'referrerAccountNumber')
  String? get referrerAccountNumber;

  @BuiltValueField(wireName: r'documentId')
  String? get documentId;

  @BuiltValueField(wireName: r'productId')
  num? get productId;

  DocumentReferral._();

  factory DocumentReferral([void updates(DocumentReferralBuilder b)]) = _$DocumentReferral;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DocumentReferralBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DocumentReferral> get serializer => _$DocumentReferralSerializer();
}

class _$DocumentReferralSerializer implements PrimitiveSerializer<DocumentReferral> {
  @override
  final Iterable<Type> types = const [DocumentReferral, _$DocumentReferral];

  @override
  final String wireName = r'DocumentReferral';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DocumentReferral object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.referralId != null) {
      yield r'referralId';
      yield serializers.serialize(
        object.referralId,
        specifiedType: const FullType(String),
      );
    }
    if (object.ubaReferralId != null) {
      yield r'ubaReferralId';
      yield serializers.serialize(
        object.ubaReferralId,
        specifiedType: const FullType(String),
      );
    }
    if (object.branchId != null) {
      yield r'branchId';
      yield serializers.serialize(
        object.branchId,
        specifiedType: const FullType(String),
      );
    }
    if (object.branchName != null) {
      yield r'branchName';
      yield serializers.serialize(
        object.branchName,
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
    if (object.documentId != null) {
      yield r'documentId';
      yield serializers.serialize(
        object.documentId,
        specifiedType: const FullType(String),
      );
    }
    if (object.productId != null) {
      yield r'productId';
      yield serializers.serialize(
        object.productId,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DocumentReferral object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DocumentReferralBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'referralId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.referralId = valueDes;
          break;
        case r'ubaReferralId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ubaReferralId = valueDes;
          break;
        case r'branchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branchId = valueDes;
          break;
        case r'branchName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branchName = valueDes;
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
        case r'documentId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.documentId = valueDes;
          break;
        case r'productId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.productId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DocumentReferral deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DocumentReferralBuilder();
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


