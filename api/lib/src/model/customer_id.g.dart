// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerId extends CustomerId {
  @override
  final String? customerId;
  @override
  final String? referralId;
  @override
  final String? agentPhone;

  factory _$CustomerId([void Function(CustomerIdBuilder)? updates]) =>
      (CustomerIdBuilder()..update(updates))._build();

  _$CustomerId._({this.customerId, this.referralId, this.agentPhone})
      : super._();
  @override
  CustomerId rebuild(void Function(CustomerIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerIdBuilder toBuilder() => CustomerIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerId &&
        customerId == other.customerId &&
        referralId == other.referralId &&
        agentPhone == other.agentPhone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, referralId.hashCode);
    _$hash = $jc(_$hash, agentPhone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerId')
          ..add('customerId', customerId)
          ..add('referralId', referralId)
          ..add('agentPhone', agentPhone))
        .toString();
  }
}

class CustomerIdBuilder implements Builder<CustomerId, CustomerIdBuilder> {
  _$CustomerId? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _referralId;
  String? get referralId => _$this._referralId;
  set referralId(String? referralId) => _$this._referralId = referralId;

  String? _agentPhone;
  String? get agentPhone => _$this._agentPhone;
  set agentPhone(String? agentPhone) => _$this._agentPhone = agentPhone;

  CustomerIdBuilder() {
    CustomerId._defaults(this);
  }

  CustomerIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _referralId = $v.referralId;
      _agentPhone = $v.agentPhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerId other) {
    _$v = other as _$CustomerId;
  }

  @override
  void update(void Function(CustomerIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerId build() => _build();

  _$CustomerId _build() {
    final _$result = _$v ??
        _$CustomerId._(
          customerId: customerId,
          referralId: referralId,
          agentPhone: agentPhone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
