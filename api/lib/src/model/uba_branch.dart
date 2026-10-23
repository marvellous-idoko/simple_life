//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uba_branch.g.dart';

/// UBABranch
///
/// Properties:
/// * [ubaBranchId] 
/// * [branchId] 
/// * [branchName] 
/// * [branchAccountNumber] 
/// * [state] 
/// * [region] 
/// * [eskaAgentIds] 
@BuiltValue()
abstract class UBABranch implements Built<UBABranch, UBABranchBuilder> {
  @BuiltValueField(wireName: r'ubaBranchId')
  String? get ubaBranchId;

  @BuiltValueField(wireName: r'branchId')
  String? get branchId;

  @BuiltValueField(wireName: r'branchName')
  String? get branchName;

  @BuiltValueField(wireName: r'branchAccountNumber')
  String? get branchAccountNumber;

  @BuiltValueField(wireName: r'state')
  String? get state;

  @BuiltValueField(wireName: r'region')
  UBABranchRegionEnum? get region;
  // enum regionEnum {  North,  South West,  South South,  South East,  };

  @BuiltValueField(wireName: r'eskaAgentIds')
  BuiltList<num>? get eskaAgentIds;

  UBABranch._();

  factory UBABranch([void updates(UBABranchBuilder b)]) = _$UBABranch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UBABranchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UBABranch> get serializer => _$UBABranchSerializer();
}

class _$UBABranchSerializer implements PrimitiveSerializer<UBABranch> {
  @override
  final Iterable<Type> types = const [UBABranch, _$UBABranch];

  @override
  final String wireName = r'UBABranch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UBABranch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ubaBranchId != null) {
      yield r'ubaBranchId';
      yield serializers.serialize(
        object.ubaBranchId,
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
    if (object.branchAccountNumber != null) {
      yield r'branchAccountNumber';
      yield serializers.serialize(
        object.branchAccountNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.state != null) {
      yield r'state';
      yield serializers.serialize(
        object.state,
        specifiedType: const FullType(String),
      );
    }
    if (object.region != null) {
      yield r'region';
      yield serializers.serialize(
        object.region,
        specifiedType: const FullType(UBABranchRegionEnum),
      );
    }
    if (object.eskaAgentIds != null) {
      yield r'eskaAgentIds';
      yield serializers.serialize(
        object.eskaAgentIds,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UBABranch object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UBABranchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ubaBranchId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ubaBranchId = valueDes;
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
        case r'branchAccountNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.branchAccountNumber = valueDes;
          break;
        case r'state':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.state = valueDes;
          break;
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UBABranchRegionEnum),
          ) as UBABranchRegionEnum?;
          if (valueDes == null) continue;
          result.region = valueDes;
          break;
        case r'eskaAgentIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(num)]),
          ) as BuiltList<num>?;
          if (valueDes == null) continue;
          result.eskaAgentIds.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UBABranch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UBABranchBuilder();
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


class UBABranchRegionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'North')
  static const UBABranchRegionEnum north = _$uBABranchRegionEnum_north;
  @BuiltValueEnumConst(wireName: r'South West')
  static const UBABranchRegionEnum southWest = _$uBABranchRegionEnum_southWest;
  @BuiltValueEnumConst(wireName: r'South South')
  static const UBABranchRegionEnum southSouth = _$uBABranchRegionEnum_southSouth;
  @BuiltValueEnumConst(wireName: r'South East')
  static const UBABranchRegionEnum southEast = _$uBABranchRegionEnum_southEast;

  static Serializer<UBABranchRegionEnum> get serializer => _$uBABranchRegionEnumSerializer;

  const UBABranchRegionEnum._(String name): super(name);

  static BuiltSet<UBABranchRegionEnum> get values => _$uBABranchRegionEnumValues;
  static UBABranchRegionEnum valueOf(String name) => _$uBABranchRegionEnumValueOf(name);
}

