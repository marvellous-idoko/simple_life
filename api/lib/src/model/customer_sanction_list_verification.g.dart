// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_sanction_list_verification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerSanctionListVerification
    extends CustomerSanctionListVerification {
  @override
  final String? customerId;
  @override
  final Date? date;
  @override
  final String? nameSearched;
  @override
  final String? profileUrl;
  @override
  final num? searchId;
  @override
  final String? searchedOn;
  @override
  final JsonObject? details;

  factory _$CustomerSanctionListVerification(
          [void Function(CustomerSanctionListVerificationBuilder)? updates]) =>
      (CustomerSanctionListVerificationBuilder()..update(updates))._build();

  _$CustomerSanctionListVerification._(
      {this.customerId,
      this.date,
      this.nameSearched,
      this.profileUrl,
      this.searchId,
      this.searchedOn,
      this.details})
      : super._();
  @override
  CustomerSanctionListVerification rebuild(
          void Function(CustomerSanctionListVerificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerSanctionListVerificationBuilder toBuilder() =>
      CustomerSanctionListVerificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerSanctionListVerification &&
        customerId == other.customerId &&
        date == other.date &&
        nameSearched == other.nameSearched &&
        profileUrl == other.profileUrl &&
        searchId == other.searchId &&
        searchedOn == other.searchedOn &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, nameSearched.hashCode);
    _$hash = $jc(_$hash, profileUrl.hashCode);
    _$hash = $jc(_$hash, searchId.hashCode);
    _$hash = $jc(_$hash, searchedOn.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerSanctionListVerification')
          ..add('customerId', customerId)
          ..add('date', date)
          ..add('nameSearched', nameSearched)
          ..add('profileUrl', profileUrl)
          ..add('searchId', searchId)
          ..add('searchedOn', searchedOn)
          ..add('details', details))
        .toString();
  }
}

class CustomerSanctionListVerificationBuilder
    implements
        Builder<CustomerSanctionListVerification,
            CustomerSanctionListVerificationBuilder> {
  _$CustomerSanctionListVerification? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  String? _nameSearched;
  String? get nameSearched => _$this._nameSearched;
  set nameSearched(String? nameSearched) => _$this._nameSearched = nameSearched;

  String? _profileUrl;
  String? get profileUrl => _$this._profileUrl;
  set profileUrl(String? profileUrl) => _$this._profileUrl = profileUrl;

  num? _searchId;
  num? get searchId => _$this._searchId;
  set searchId(num? searchId) => _$this._searchId = searchId;

  String? _searchedOn;
  String? get searchedOn => _$this._searchedOn;
  set searchedOn(String? searchedOn) => _$this._searchedOn = searchedOn;

  JsonObject? _details;
  JsonObject? get details => _$this._details;
  set details(JsonObject? details) => _$this._details = details;

  CustomerSanctionListVerificationBuilder() {
    CustomerSanctionListVerification._defaults(this);
  }

  CustomerSanctionListVerificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _date = $v.date;
      _nameSearched = $v.nameSearched;
      _profileUrl = $v.profileUrl;
      _searchId = $v.searchId;
      _searchedOn = $v.searchedOn;
      _details = $v.details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerSanctionListVerification other) {
    _$v = other as _$CustomerSanctionListVerification;
  }

  @override
  void update(void Function(CustomerSanctionListVerificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerSanctionListVerification build() => _build();

  _$CustomerSanctionListVerification _build() {
    final _$result = _$v ??
        _$CustomerSanctionListVerification._(
          customerId: customerId,
          date: date,
          nameSearched: nameSearched,
          profileUrl: profileUrl,
          searchId: searchId,
          searchedOn: searchedOn,
          details: details,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
