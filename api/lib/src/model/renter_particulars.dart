//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/address.dart';
import 'package:openapi/src/model/renter_particulars_any_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'renter_particulars.g.dart';

/// RenterParticulars
///
/// Properties:
/// * [city] 
/// * [state] 
/// * [address] - Address of entity
/// * [country] 
/// * [street] 
/// * [streetNumber] 
/// * [postCode] 
/// * [renterId] 
/// * [owner] - Name of Renter
/// * [category] - Business Category
@BuiltValue()
abstract class RenterParticulars implements Built<RenterParticulars, RenterParticularsBuilder> {
  /// Any Of [Address], [RenterParticularsAnyOf]
  AnyOf get anyOf;

  RenterParticulars._();

  factory RenterParticulars([void updates(RenterParticularsBuilder b)]) = _$RenterParticulars;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RenterParticularsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RenterParticulars> get serializer => _$RenterParticularsSerializer();
}

class _$RenterParticularsSerializer implements PrimitiveSerializer<RenterParticulars> {
  @override
  final Iterable<Type> types = const [RenterParticulars, _$RenterParticulars];

  @override
  final String wireName = r'RenterParticulars';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RenterParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    RenterParticulars object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.types.map((type) => FullType(type)).toList()))!;
  }

  @override
  RenterParticulars deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RenterParticularsBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Address), FullType(RenterParticularsAnyOf), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}


