//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pre_loss_status.g.dart';

class PreLossStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const PreLossStatus pending = _$pending;
  @BuiltValueEnumConst(wireName: r'Queried')
  static const PreLossStatus queried = _$queried;
  @BuiltValueEnumConst(wireName: r'In Progress')
  static const PreLossStatus inProgress = _$inProgress;
  @BuiltValueEnumConst(wireName: r'Approved')
  static const PreLossStatus approved = _$approved;
  @BuiltValueEnumConst(wireName: r'Responded Query')
  static const PreLossStatus respondedQuery = _$respondedQuery;

  static Serializer<PreLossStatus> get serializer => _$preLossStatusSerializer;

  const PreLossStatus._(String name): super(name);

  static BuiltSet<PreLossStatus> get values => _$values;
  static PreLossStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PreLossStatusMixin = Object with _$PreLossStatusMixin;

