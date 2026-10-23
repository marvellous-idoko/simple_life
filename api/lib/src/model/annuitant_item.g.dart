// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annuitant_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnuitantItem extends AnnuitantItem {
  @override
  final String? annuityId;
  @override
  final String? personId;
  @override
  final String? commission;
  @override
  final num? guarantyPeriod;
  @override
  final String? source_;
  @override
  final num? premium;
  @override
  final String? address;
  @override
  final String? pfa;
  @override
  final String? rsaPin;
  @override
  final String? retirementDate;
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
  @override
  final String? annuityRateType;

  factory _$AnnuitantItem([void Function(AnnuitantItemBuilder)? updates]) =>
      (AnnuitantItemBuilder()..update(updates))._build();

  _$AnnuitantItem._(
      {this.annuityId,
      this.personId,
      this.commission,
      this.guarantyPeriod,
      this.source_,
      this.premium,
      this.address,
      this.pfa,
      this.rsaPin,
      this.retirementDate,
      this.bank,
      this.accountNumber,
      this.accountName,
      this.frequency,
      this.businessType,
      this.businessChannel,
      this.annuityRateType})
      : super._();
  @override
  AnnuitantItem rebuild(void Function(AnnuitantItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnuitantItemBuilder toBuilder() => AnnuitantItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnuitantItem &&
        annuityId == other.annuityId &&
        personId == other.personId &&
        commission == other.commission &&
        guarantyPeriod == other.guarantyPeriod &&
        source_ == other.source_ &&
        premium == other.premium &&
        address == other.address &&
        pfa == other.pfa &&
        rsaPin == other.rsaPin &&
        retirementDate == other.retirementDate &&
        bank == other.bank &&
        accountNumber == other.accountNumber &&
        accountName == other.accountName &&
        frequency == other.frequency &&
        businessType == other.businessType &&
        businessChannel == other.businessChannel &&
        annuityRateType == other.annuityRateType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, annuityId.hashCode);
    _$hash = $jc(_$hash, personId.hashCode);
    _$hash = $jc(_$hash, commission.hashCode);
    _$hash = $jc(_$hash, guarantyPeriod.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, premium.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, pfa.hashCode);
    _$hash = $jc(_$hash, rsaPin.hashCode);
    _$hash = $jc(_$hash, retirementDate.hashCode);
    _$hash = $jc(_$hash, bank.hashCode);
    _$hash = $jc(_$hash, accountNumber.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jc(_$hash, businessType.hashCode);
    _$hash = $jc(_$hash, businessChannel.hashCode);
    _$hash = $jc(_$hash, annuityRateType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnuitantItem')
          ..add('annuityId', annuityId)
          ..add('personId', personId)
          ..add('commission', commission)
          ..add('guarantyPeriod', guarantyPeriod)
          ..add('source_', source_)
          ..add('premium', premium)
          ..add('address', address)
          ..add('pfa', pfa)
          ..add('rsaPin', rsaPin)
          ..add('retirementDate', retirementDate)
          ..add('bank', bank)
          ..add('accountNumber', accountNumber)
          ..add('accountName', accountName)
          ..add('frequency', frequency)
          ..add('businessType', businessType)
          ..add('businessChannel', businessChannel)
          ..add('annuityRateType', annuityRateType))
        .toString();
  }
}

class AnnuitantItemBuilder
    implements Builder<AnnuitantItem, AnnuitantItemBuilder> {
  _$AnnuitantItem? _$v;

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

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(num? premium) => _$this._premium = premium;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _pfa;
  String? get pfa => _$this._pfa;
  set pfa(String? pfa) => _$this._pfa = pfa;

  String? _rsaPin;
  String? get rsaPin => _$this._rsaPin;
  set rsaPin(String? rsaPin) => _$this._rsaPin = rsaPin;

  String? _retirementDate;
  String? get retirementDate => _$this._retirementDate;
  set retirementDate(String? retirementDate) =>
      _$this._retirementDate = retirementDate;

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

  String? _annuityRateType;
  String? get annuityRateType => _$this._annuityRateType;
  set annuityRateType(String? annuityRateType) =>
      _$this._annuityRateType = annuityRateType;

  AnnuitantItemBuilder() {
    AnnuitantItem._defaults(this);
  }

  AnnuitantItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _annuityId = $v.annuityId;
      _personId = $v.personId;
      _commission = $v.commission;
      _guarantyPeriod = $v.guarantyPeriod;
      _source_ = $v.source_;
      _premium = $v.premium;
      _address = $v.address;
      _pfa = $v.pfa;
      _rsaPin = $v.rsaPin;
      _retirementDate = $v.retirementDate;
      _bank = $v.bank;
      _accountNumber = $v.accountNumber;
      _accountName = $v.accountName;
      _frequency = $v.frequency;
      _businessType = $v.businessType;
      _businessChannel = $v.businessChannel;
      _annuityRateType = $v.annuityRateType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnuitantItem other) {
    _$v = other as _$AnnuitantItem;
  }

  @override
  void update(void Function(AnnuitantItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnuitantItem build() => _build();

  _$AnnuitantItem _build() {
    final _$result = _$v ??
        _$AnnuitantItem._(
          annuityId: annuityId,
          personId: personId,
          commission: commission,
          guarantyPeriod: guarantyPeriod,
          source_: source_,
          premium: premium,
          address: address,
          pfa: pfa,
          rsaPin: rsaPin,
          retirementDate: retirementDate,
          bank: bank,
          accountNumber: accountNumber,
          accountName: accountName,
          frequency: frequency,
          businessType: businessType,
          businessChannel: businessChannel,
          annuityRateType: annuityRateType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
