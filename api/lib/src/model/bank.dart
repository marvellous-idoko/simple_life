//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'bank.g.dart';

/// Bank
///
/// Properties:
/// * [bankId] - Bank Name
/// * [bankName] - Bank Name
/// * [bankCode] - CBN Bank Code
/// * [status] - enabled or disabled
@BuiltValue()
abstract class Bank implements Built<Bank, BankBuilder> {
  /// Bank Name
  @BuiltValueField(wireName: r'bankId')
  String? get bankId;

  /// Bank Name
  @BuiltValueField(wireName: r'bankName')
  String? get bankName;

  /// CBN Bank Code
  @BuiltValueField(wireName: r'bankCode')
  String? get bankCode;

  /// enabled or disabled
  @BuiltValueField(wireName: r'status')
  BankStatusEnum? get status;
  // enum statusEnum {  enable,  disable,  };

  Bank._();

  factory Bank([void updates(BankBuilder b)]) = _$Bank;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BankBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Bank> get serializer => _$BankSerializer();
}

class _$BankSerializer implements PrimitiveSerializer<Bank> {
  @override
  final Iterable<Type> types = const [Bank, _$Bank];

  @override
  final String wireName = r'Bank';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Bank object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bankId != null) {
      yield r'bankId';
      yield serializers.serialize(
        object.bankId,
        specifiedType: const FullType(String),
      );
    }
    if (object.bankName != null) {
      yield r'bankName';
      yield serializers.serialize(
        object.bankName,
        specifiedType: const FullType(String),
      );
    }
    if (object.bankCode != null) {
      yield r'bankCode';
      yield serializers.serialize(
        object.bankCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(BankStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Bank object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BankBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bankId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankId = valueDes;
          break;
        case r'bankName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankName = valueDes;
          break;
        case r'bankCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.bankCode = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BankStatusEnum),
          ) as BankStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Bank deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BankBuilder();
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


/// enabled or disabled
class BankStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'enable')
  static const BankStatusEnum enable = _$bankStatusEnum_enable;
  @BuiltValueEnumConst(wireName: r'disable')
  static const BankStatusEnum disable = _$bankStatusEnum_disable;

  static Serializer<BankStatusEnum> get serializer => _$bankStatusEnumSerializer;

  const BankStatusEnum._(String name): super(name);

  static BuiltSet<BankStatusEnum> get values => _$bankStatusEnumValues;
  static BankStatusEnum valueOf(String name) => _$bankStatusEnumValueOf(name);
}

