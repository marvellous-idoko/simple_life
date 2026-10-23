// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_motor_installments200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMotorInstallments200Response
    extends GetMotorInstallments200Response {
  @override
  final String? id;
  @override
  final num? premium;
  @override
  final String? status;
  @override
  final String? customerId;
  @override
  final num? eskaPolicyId;
  @override
  final Date? dueAt;
  @override
  final Date? createdAt;

  factory _$GetMotorInstallments200Response(
          [void Function(GetMotorInstallments200ResponseBuilder)? updates]) =>
      (GetMotorInstallments200ResponseBuilder()..update(updates))._build();

  _$GetMotorInstallments200Response._(
      {this.id,
      this.premium,
      this.status,
      this.customerId,
      this.eskaPolicyId,
      this.dueAt,
      this.createdAt})
      : super._();
  @override
  GetMotorInstallments200Response rebuild(
          void Function(GetMotorInstallments200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMotorInstallments200ResponseBuilder toBuilder() =>
      GetMotorInstallments200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMotorInstallments200Response &&
        id == other.id &&
        premium == other.premium &&
        status == other.status &&
        customerId == other.customerId &&
        eskaPolicyId == other.eskaPolicyId &&
        dueAt == other.dueAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, eskaPolicyId.hashCode);
    _$hash = $jc(_$hash, dueAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMotorInstallments200Response')
          ..add('id', id)
          ..add('premium', premium)
          ..add('status', status)
          ..add('customerId', customerId)
          ..add('eskaPolicyId', eskaPolicyId)
          ..add('dueAt', dueAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class GetMotorInstallments200ResponseBuilder
    implements
        Builder<GetMotorInstallments200Response,
            GetMotorInstallments200ResponseBuilder> {
  _$GetMotorInstallments200Response? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  num? _eskaPolicyId;
  num? get eskaPolicyId => _$this._eskaPolicyId;
  set eskaPolicyId(num? eskaPolicyId) => _$this._eskaPolicyId = eskaPolicyId;

  Date? _dueAt;
  Date? get dueAt => _$this._dueAt;
  set dueAt(Date? dueAt) => _$this._dueAt = dueAt;

  Date? _createdAt;
  Date? get createdAt => _$this._createdAt;
  set createdAt(Date? createdAt) => _$this._createdAt = createdAt;

  GetMotorInstallments200ResponseBuilder() {
    GetMotorInstallments200Response._defaults(this);
  }

  GetMotorInstallments200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _premium = $v.premium;
      _status = $v.status;
      _customerId = $v.customerId;
      _eskaPolicyId = $v.eskaPolicyId;
      _dueAt = $v.dueAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMotorInstallments200Response other) {
    _$v = other as _$GetMotorInstallments200Response;
  }

  @override
  void update(void Function(GetMotorInstallments200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMotorInstallments200Response build() => _build();

  _$GetMotorInstallments200Response _build() {
    final _$result = _$v ??
        _$GetMotorInstallments200Response._(
          id: id,
          premium: premium,
          status: status,
          customerId: customerId,
          eskaPolicyId: eskaPolicyId,
          dueAt: dueAt,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
