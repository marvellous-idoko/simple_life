// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_buy_action_to_customer_experience_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendBuyActionToCustomerExperienceRequest
    extends SendBuyActionToCustomerExperienceRequest {
  @override
  final String? policyInfo;
  @override
  final String? inquiryType;

  factory _$SendBuyActionToCustomerExperienceRequest(
          [void Function(SendBuyActionToCustomerExperienceRequestBuilder)?
              updates]) =>
      (SendBuyActionToCustomerExperienceRequestBuilder()..update(updates))
          ._build();

  _$SendBuyActionToCustomerExperienceRequest._(
      {this.policyInfo, this.inquiryType})
      : super._();
  @override
  SendBuyActionToCustomerExperienceRequest rebuild(
          void Function(SendBuyActionToCustomerExperienceRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendBuyActionToCustomerExperienceRequestBuilder toBuilder() =>
      SendBuyActionToCustomerExperienceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendBuyActionToCustomerExperienceRequest &&
        policyInfo == other.policyInfo &&
        inquiryType == other.inquiryType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, policyInfo.hashCode);
    _$hash = $jc(_$hash, inquiryType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SendBuyActionToCustomerExperienceRequest')
          ..add('policyInfo', policyInfo)
          ..add('inquiryType', inquiryType))
        .toString();
  }
}

class SendBuyActionToCustomerExperienceRequestBuilder
    implements
        Builder<SendBuyActionToCustomerExperienceRequest,
            SendBuyActionToCustomerExperienceRequestBuilder> {
  _$SendBuyActionToCustomerExperienceRequest? _$v;

  String? _policyInfo;
  String? get policyInfo => _$this._policyInfo;
  set policyInfo(String? policyInfo) => _$this._policyInfo = policyInfo;

  String? _inquiryType;
  String? get inquiryType => _$this._inquiryType;
  set inquiryType(String? inquiryType) => _$this._inquiryType = inquiryType;

  SendBuyActionToCustomerExperienceRequestBuilder() {
    SendBuyActionToCustomerExperienceRequest._defaults(this);
  }

  SendBuyActionToCustomerExperienceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _policyInfo = $v.policyInfo;
      _inquiryType = $v.inquiryType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendBuyActionToCustomerExperienceRequest other) {
    _$v = other as _$SendBuyActionToCustomerExperienceRequest;
  }

  @override
  void update(
      void Function(SendBuyActionToCustomerExperienceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendBuyActionToCustomerExperienceRequest build() => _build();

  _$SendBuyActionToCustomerExperienceRequest _build() {
    final _$result = _$v ??
        _$SendBuyActionToCustomerExperienceRequest._(
          policyInfo: policyInfo,
          inquiryType: inquiryType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
