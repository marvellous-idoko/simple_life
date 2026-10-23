// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_loss_photo_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreLossPhotoLink extends PreLossPhotoLink {
  @override
  final String? prelossPhotoLinkId;
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
  final String? generatedPhotoLink;

  factory _$PreLossPhotoLink(
          [void Function(PreLossPhotoLinkBuilder)? updates]) =>
      (PreLossPhotoLinkBuilder()..update(updates))._build();

  _$PreLossPhotoLink._(
      {this.prelossPhotoLinkId,
      this.staffId,
      this.staffName,
      this.agentEmailAddress,
      this.customerEmailAddress,
      this.otherEmailAddress,
      this.generatedPhotoLink})
      : super._();
  @override
  PreLossPhotoLink rebuild(void Function(PreLossPhotoLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreLossPhotoLinkBuilder toBuilder() =>
      PreLossPhotoLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreLossPhotoLink &&
        prelossPhotoLinkId == other.prelossPhotoLinkId &&
        staffId == other.staffId &&
        staffName == other.staffName &&
        agentEmailAddress == other.agentEmailAddress &&
        customerEmailAddress == other.customerEmailAddress &&
        otherEmailAddress == other.otherEmailAddress &&
        generatedPhotoLink == other.generatedPhotoLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, prelossPhotoLinkId.hashCode);
    _$hash = $jc(_$hash, staffId.hashCode);
    _$hash = $jc(_$hash, staffName.hashCode);
    _$hash = $jc(_$hash, agentEmailAddress.hashCode);
    _$hash = $jc(_$hash, customerEmailAddress.hashCode);
    _$hash = $jc(_$hash, otherEmailAddress.hashCode);
    _$hash = $jc(_$hash, generatedPhotoLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreLossPhotoLink')
          ..add('prelossPhotoLinkId', prelossPhotoLinkId)
          ..add('staffId', staffId)
          ..add('staffName', staffName)
          ..add('agentEmailAddress', agentEmailAddress)
          ..add('customerEmailAddress', customerEmailAddress)
          ..add('otherEmailAddress', otherEmailAddress)
          ..add('generatedPhotoLink', generatedPhotoLink))
        .toString();
  }
}

class PreLossPhotoLinkBuilder
    implements Builder<PreLossPhotoLink, PreLossPhotoLinkBuilder> {
  _$PreLossPhotoLink? _$v;

  String? _prelossPhotoLinkId;
  String? get prelossPhotoLinkId => _$this._prelossPhotoLinkId;
  set prelossPhotoLinkId(String? prelossPhotoLinkId) =>
      _$this._prelossPhotoLinkId = prelossPhotoLinkId;

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

  String? _generatedPhotoLink;
  String? get generatedPhotoLink => _$this._generatedPhotoLink;
  set generatedPhotoLink(String? generatedPhotoLink) =>
      _$this._generatedPhotoLink = generatedPhotoLink;

  PreLossPhotoLinkBuilder() {
    PreLossPhotoLink._defaults(this);
  }

  PreLossPhotoLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prelossPhotoLinkId = $v.prelossPhotoLinkId;
      _staffId = $v.staffId;
      _staffName = $v.staffName;
      _agentEmailAddress = $v.agentEmailAddress;
      _customerEmailAddress = $v.customerEmailAddress;
      _otherEmailAddress = $v.otherEmailAddress;
      _generatedPhotoLink = $v.generatedPhotoLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreLossPhotoLink other) {
    _$v = other as _$PreLossPhotoLink;
  }

  @override
  void update(void Function(PreLossPhotoLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreLossPhotoLink build() => _build();

  _$PreLossPhotoLink _build() {
    final _$result = _$v ??
        _$PreLossPhotoLink._(
          prelossPhotoLinkId: prelossPhotoLinkId,
          staffId: staffId,
          staffName: staffName,
          agentEmailAddress: agentEmailAddress,
          customerEmailAddress: customerEmailAddress,
          otherEmailAddress: otherEmailAddress,
          generatedPhotoLink: generatedPhotoLink,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
