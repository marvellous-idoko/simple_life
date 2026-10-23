// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_loss_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PreLossStatus _$pending = const PreLossStatus._('pending');
const PreLossStatus _$queried = const PreLossStatus._('queried');
const PreLossStatus _$inProgress = const PreLossStatus._('inProgress');
const PreLossStatus _$approved = const PreLossStatus._('approved');
const PreLossStatus _$respondedQuery = const PreLossStatus._('respondedQuery');

PreLossStatus _$valueOf(String name) {
  switch (name) {
    case 'pending':
      return _$pending;
    case 'queried':
      return _$queried;
    case 'inProgress':
      return _$inProgress;
    case 'approved':
      return _$approved;
    case 'respondedQuery':
      return _$respondedQuery;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PreLossStatus> _$values =
    BuiltSet<PreLossStatus>(const <PreLossStatus>[
  _$pending,
  _$queried,
  _$inProgress,
  _$approved,
  _$respondedQuery,
]);

class _$PreLossStatusMeta {
  const _$PreLossStatusMeta();
  PreLossStatus get pending => _$pending;
  PreLossStatus get queried => _$queried;
  PreLossStatus get inProgress => _$inProgress;
  PreLossStatus get approved => _$approved;
  PreLossStatus get respondedQuery => _$respondedQuery;
  PreLossStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<PreLossStatus> get values => _$values;
}

abstract class _$PreLossStatusMixin {
  // ignore: non_constant_identifier_names
  _$PreLossStatusMeta get PreLossStatus => const _$PreLossStatusMeta();
}

Serializer<PreLossStatus> _$preLossStatusSerializer =
    _$PreLossStatusSerializer();

class _$PreLossStatusSerializer implements PrimitiveSerializer<PreLossStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'Pending',
    'queried': 'Queried',
    'inProgress': 'In Progress',
    'approved': 'Approved',
    'respondedQuery': 'Responded Query',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Pending': 'pending',
    'Queried': 'queried',
    'In Progress': 'inProgress',
    'Approved': 'approved',
    'Responded Query': 'respondedQuery',
  };

  @override
  final Iterable<Type> types = const <Type>[PreLossStatus];
  @override
  final String wireName = 'PreLossStatus';

  @override
  Object serialize(Serializers serializers, PreLossStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PreLossStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PreLossStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
