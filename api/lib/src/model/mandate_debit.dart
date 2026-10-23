//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mandate_debit.g.dart';

/// MandateDebit
///
/// Properties:
/// * [mandateId] 
/// * [debitId] 
/// * [amount] 
/// * [company] 
@BuiltValue()
abstract class MandateDebit implements Built<MandateDebit, MandateDebitBuilder> {
  @BuiltValueField(wireName: r'mandateId')
  String? get mandateId;

  @BuiltValueField(wireName: r'debitId')
  String? get debitId;

  @BuiltValueField(wireName: r'amount')
  num? get amount;

  @BuiltValueField(wireName: r'company')
  String? get company;

  MandateDebit._();

  factory MandateDebit([void updates(MandateDebitBuilder b)]) = _$MandateDebit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MandateDebitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MandateDebit> get serializer => _$MandateDebitSerializer();
}

class _$MandateDebitSerializer implements PrimitiveSerializer<MandateDebit> {
  @override
  final Iterable<Type> types = const [MandateDebit, _$MandateDebit];

  @override
  final String wireName = r'MandateDebit';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MandateDebit object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.mandateId != null) {
      yield r'mandateId';
      yield serializers.serialize(
        object.mandateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.debitId != null) {
      yield r'debitId';
      yield serializers.serialize(
        object.debitId,
        specifiedType: const FullType(String),
      );
    }
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(num),
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
    MandateDebit object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MandateDebitBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'mandateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mandateId = valueDes;
          break;
        case r'debitId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.debitId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.amount = valueDes;
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
  MandateDebit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MandateDebitBuilder();
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


