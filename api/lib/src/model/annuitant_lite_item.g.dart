// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annuitant_lite_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnuitantLiteItem extends AnnuitantLiteItem {
  @override
  final String? annuityId;
  @override
  final String? personId;
  @override
  final String? commission;
  @override
  final num? guarantyPeriod;
  @override
  final num? premium;
  @override
  final String? address;
  @override
  final String? bank;
  @override
  final String? accountNumber;
  @override
  final String? accountName;
  @override
  final String? frequency;
  @override
  final String? businessType;
  @override
  final String? businessChannel;

  factory _$AnnuitantLiteItem(
          [void Function(AnnuitantLiteItemBuilder)? updates]) =>
      (AnnuitantLiteItemBuilder()..update(updates))._build();

  _$AnnuitantLiteItem._(
      {this.annuityId,
      this.personId,
      this.commission,
      this.guarantyPeriod,
      this.premium,
      this.address,
      this.bank,
      this.accountNumber,
      this.accountName,
      this.frequency,
      this.businessType,
      this.businessChannel})
      : super._();
  @override
  AnnuitantLiteItem rebuild(void Function(AnnuitantLiteItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnuitantLiteItemBuilder toBuilder() =>
      AnnuitantLiteItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnuitantLiteItem &&
        annuityId == other.annuityId &&
        personId == other.personId &&
        commission == other.commission &&
        guarantyPeriod == other.guarantyPeriod &&
        premium == other.premium &&
        address == other.address &&
        bank == other.bank &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        frequency == other.frequency &&
        businessType == other.businessType &&
        businessChannel == other.businessChannel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, annuityId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, commission.hashCode);
    _$hash = $jc(_$hash, guarantyPeriod.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, bank.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, businessType.hashCode);
    _$hash = $jc(_$hash, businessChannel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnuitantLiteItem')
          ..add('annuityId', annuityId)
          ..add('personId', personId)
          ..add('commission', commission)
          ..add('guarantyPeriod', guarantyPeriod)
          ..add('premium', premium)
          ..add('address', address)
          ..add('bank', bank)
          ..add('accountNumber', accountNumber)
          ..add('accountName', accountName)
          ..add('frequency', frequency)
          ..add('businessType', businessType)
          ..add('businessChannel', businessChannel))
        .toString();
  }
}

class AnnuitantLiteItemBuilder
    implements Builder<AnnuitantLiteItem, AnnuitantLiteItemBuilder> {
  _$AnnuitantLiteItem? _$v;

  String? _annuityId;
  String? get annuityId => _$this._annuityId;
  set annuityId(String? annuityId) => _$this._annuityId = annuityId;

  String? _personId;
  String? get personId => _$this._personId;
  set personId(String? personId) => _$this._personId = personId;

  String? _commission;
  String? get commission => _$this._commission;
  set commission(String? commission) => _$this._commission = commission;

  num? _guarantyPeriod;
  num? get guarantyPeriod => _$this._guarantyPeriod;
  set guarantyPeriod(num? guarantyPeriod) =>
      _$this._guarantyPeriod = guarantyPeriod;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _frequency;
  String? get frequency => _$this._frequency;
  set frequency(String? frequency) => _$this._frequency = frequency;

  String? _businessType;
  String? get businessType => _$this._businessType;
  set businessType(String? businessType) => _$this._businessType = businessType;

  String? _businessChannel;
  String? get businessChannel => _$this._businessChannel;
  set businessChannel(String? businessChannel) =>
      _$this._businessChannel = businessChannel;

  AnnuitantLiteItemBuilder() {
    AnnuitantLiteItem._defaults(this);
  }

  AnnuitantLiteItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annuityId = $v.annuityId;
      _personId = $v.personId;
      _commission = $v.commission;
      _guarantyPeriod = $v.guarantyPeriod;
      _premium = $v.premium;
      _address = $v.address;
      _bank = $v.bank;
      _accountNumber = $v.accountNumber;
      _accountName = $v.accountName;
      _frequency = $v.frequency;
      _businessType = $v.businessType;
      _businessChannel = $v.businessChannel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnuitantLiteItem other) {
    _$v = other as _$AnnuitantLiteItem;
  }

  @override
  void update(void Function(AnnuitantLiteItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnuitantLiteItem build() => _build();

  _$AnnuitantLiteItem _build() {
    final _$result = _$v ??
        _$AnnuitantLiteItem._(
          annuityId: annuityId,
          personId: personId,
          commission: commission,
          guarantyPeriod: guarantyPeriod,
          premium: premium,
          address: address,
          bank: bank,
          accountNumber: accountNumber,
          accountName: accountName,
          frequency: frequency,
          businessType: businessType,
          businessChannel: businessChannel,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
