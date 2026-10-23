// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_loss_video_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreLossVideoLink extends PreLossVideoLink {
  @override
  final String? prelossVideoLinkId;
  @override
  final String? staffId;
  @override
  final String? staffName;
  @override
  final String? agentEmailAddress;
  @override
  final String? customerEmailAddress;
  @override
  final String? otherEmailAddress;
  @override
  final String? generatedVideoLink;

  factory _$PreLossVideoLink(
          [void Function(PreLossVideoLinkBuilder)? updates]) =>
      (PreLossVideoLinkBuilder()..update(updates))._build();

  _$PreLossVideoLink._(
      {this.prelossVideoLinkId,
      this.staffId,
      this.staffName,
      this.agentEmailAddress,
      this.customerEmailAddress,
      this.otherEmailAddress,
      this.generatedVideoLink})
      : super._();
  @override
  PreLossVideoLink rebuild(void Function(PreLossVideoLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreLossVideoLinkBuilder toBuilder() =>
      PreLossVideoLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreLossVideoLink &&
        prelossVideoLinkId == other.prelossVideoLinkId &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        agentEmailAddress == other.agentEmailAddress &&
        customerEmailAddress == other.customerEmailAddress &&
        otherEmailAddress == other.otherEmailAddress &&
        generatedVideoLink == other.generatedVideoLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prelossVideoLinkId.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, agentEmailAddress.hashCode);
    _$hash = $jc(_$hash, customerEmailAddress.hashCode);
    _$hash = $jc(_$hash, otherEmailAddress.hashCode);
    _$hash = $jc(_$hash, generatedVideoLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreLossVideoLink')
          ..add('prelossVideoLinkId', prelossVideoLinkId)
          ..add('staffId', staffId)
          ..add('staffName', staffName)
          ..add('agentEmailAddress', agentEmailAddress)
          ..add('customerEmailAddress', customerEmailAddress)
          ..add('otherEmailAddress', otherEmailAddress)
          ..add('generatedVideoLink', generatedVideoLink))
        .toString();
  }
}

class PreLossVideoLinkBuilder
    implements Builder<PreLossVideoLink, PreLossVideoLinkBuilder> {
  _$PreLossVideoLink? _$v;

  String? _prelossVideoLinkId;
  String? get prelossVideoLinkId => _$this._prelossVideoLinkId;
  set prelossVideoLinkId(String? prelossVideoLinkId) =>
      _$this._prelossVideoLinkId = prelossVideoLinkId;

  String? _staffId;
  String? get staffId => _$this._staffId;
  set staffId(String? staffId) => _$this._staffId = staffId;

  String? _staffName;
  String? get staffName => _$this._staffName;
  set staffName(String? staffName) => _$this._staffName = staffName;

  String? _agentEmailAddress;
  String? get agentEmailAddress => _$this._agentEmailAddress;
  set agentEmailAddress(String? agentEmailAddress) =>
      _$this._agentEmailAddress = agentEmailAddress;

  String? _customerEmailAddress;
  String? get customerEmailAddress => _$this._customerEmailAddress;
  set customerEmailAddress(String? customerEmailAddress) =>
      _$this._customerEmailAddress = customerEmailAddress;

  String? _otherEmailAddress;
  String? get otherEmailAddress => _$this._otherEmailAddress;
  set otherEmailAddress(String? otherEmailAddress) =>
      _$this._otherEmailAddress = otherEmailAddress;

  String? _generatedVideoLink;
  String? get generatedVideoLink => _$this._generatedVideoLink;
  set generatedVideoLink(String? generatedVideoLink) =>
      _$this._generatedVideoLink = generatedVideoLink;

  PreLossVideoLinkBuilder() {
    PreLossVideoLink._defaults(this);
  }

  PreLossVideoLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prelossVideoLinkId = $v.prelossVideoLinkId;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _agentEmailAddress = $v.agentEmailAddress;
      _customerEmailAddress = $v.customerEmailAddress;
      _otherEmailAddress = $v.otherEmailAddress;
      _generatedVideoLink = $v.generatedVideoLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreLossVideoLink other) {
    _$v = other as _$PreLossVideoLink;
  }

  @override
  void update(void Function(PreLossVideoLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreLossVideoLink build() => _build();

  _$PreLossVideoLink _build() {
    final _$result = _$v ??
        _$PreLossVideoLink._(
          prelossVideoLinkId: prelossVideoLinkId,
          staffId: staffId,
          staffName: staffName,
          agentEmailAddress: agentEmailAddress,
          customerEmailAddress: customerEmailAddress,
          otherEmailAddress: otherEmailAddress,
          generatedVideoLink: generatedVideoLink,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
