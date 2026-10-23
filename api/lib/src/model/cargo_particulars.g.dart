// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo_particulars.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CargoParticularsCurrencyEnum _$cargoParticularsCurrencyEnum_USD =
    const CargoParticularsCurrencyEnum._('USD');
const CargoParticularsCurrencyEnum _$cargoParticularsCurrencyEnum_GPB =
    const CargoParticularsCurrencyEnum._('GPB');
const CargoParticularsCurrencyEnum _$cargoParticularsCurrencyEnum_EUR =
    const CargoParticularsCurrencyEnum._('EUR');

CargoParticularsCurrencyEnum _$cargoParticularsCurrencyEnumValueOf(
    String name) {
  switch (name) {
    case 'USD':
      return _$cargoParticularsCurrencyEnum_USD;
    case 'GPB':
      return _$cargoParticularsCurrencyEnum_GPB;
    case 'EUR':
      return _$cargoParticularsCurrencyEnum_EUR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CargoParticularsCurrencyEnum>
    _$cargoParticularsCurrencyEnumValues =
    BuiltSet<CargoParticularsCurrencyEnum>(const <CargoParticularsCurrencyEnum>[
  _$cargoParticularsCurrencyEnum_USD,
  _$cargoParticularsCurrencyEnum_GPB,
  _$cargoParticularsCurrencyEnum_EUR,
]);

Serializer<CargoParticularsCurrencyEnum>
    _$cargoParticularsCurrencyEnumSerializer =
    _$CargoParticularsCurrencyEnumSerializer();

class _$CargoParticularsCurrencyEnumSerializer
    implements PrimitiveSerializer<CargoParticularsCurrencyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USD': 'USD',
    'GPB': 'GPB',
    'EUR': 'EUR',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USD': 'USD',
    'GPB': 'GPB',
    'EUR': 'EUR',
  };

  @override
  final Iterable<Type> types = const <Type>[CargoParticularsCurrencyEnum];
  @override
  final String wireName = 'CargoParticularsCurrencyEnum';

  @override
  Object serialize(Serializers serializers, CargoParticularsCurrencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CargoParticularsCurrencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CargoParticularsCurrencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CargoParticulars extends CargoParticulars {
  @override
  final String? cargoId;
  @override
  final num? amount;
  @override
  final num? exchangeRate;
  @override
  final num? sumInsured;
  @override
  final CargoParticularsCurrencyEnum? currency;
  @override
  final String? bankName;
  @override
  final String? loadingPort;
  @override
  final String? destinationPort;
  @override
  final String? cacNumber;
  @override
  final String? invoiceNumber;
  @override
  final String? tinNumber;
  @override
  final String? lcNumber;
  @override
  final String? cargo;
  @override
  final num? loading;

  factory _$CargoParticulars(
          [void Function(CargoParticularsBuilder)? updates]) =>
      (CargoParticularsBuilder()..update(updates))._build();

  _$CargoParticulars._(
      {this.cargoId,
      this.amount,
      this.exchangeRate,
      this.sumInsured,
      this.currency,
      this.bankName,
      this.loadingPort,
      this.destinationPort,
      this.cacNumber,
      this.invoiceNumber,
      this.tinNumber,
      this.lcNumber,
      this.cargo,
      this.loading})
      : super._();
  @override
  CargoParticulars rebuild(void Function(CargoParticularsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CargoParticularsBuilder toBuilder() =>
      CargoParticularsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CargoParticulars &&
        cargoId == other.cargoId &&
        amount == other.amount &&
        exchangeRate == other.exchangeRate &&
        sumInsured == other.sumInsured &&
        currency == other.currency &&
        bankName == other.bankName &&
        loadingPort == other.loadingPort &&
        destinationPort == other.destinationPort &&
        cacNumber == other.cacNumber &&
        invoiceNumber == other.invoiceNumber &&
        tinNumber == other.tinNumber &&
        lcNumber == other.lcNumber &&
        cargo == other.cargo &&
        loading == other.loading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cargoId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, exchangeRate.hashCode);
    _$hash = $jc(_$hash, sumInsured.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, bankName.hashCode);
    _$hash = $jc(_$hash, loadingPort.hashCode);
    _$hash = $jc(_$hash, destinationPort.hashCode);
    _$hash = $jc(_$hash, cacNumber.hashCode);
    _$hash = $jc(_$hash, invoiceNumber.hashCode);
    _$hash = $jc(_$hash, tinNumber.hashCode);
    _$hash = $jc(_$hash, lcNumber.hashCode);
    _$hash = $jc(_$hash, cargo.hashCode);
    _$hash = $jc(_$hash, loading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CargoParticulars')
          ..add('cargoId', cargoId)
          ..add('amount', amount)
          ..add('exchangeRate', exchangeRate)
          ..add('sumInsured', sumInsured)
          ..add('currency', currency)
          ..add('bankName', bankName)
          ..add('loadingPort', loadingPort)
          ..add('destinationPort', destinationPort)
          ..add('cacNumber', cacNumber)
          ..add('invoiceNumber', invoiceNumber)
          ..add('tinNumber', tinNumber)
          ..add('lcNumber', lcNumber)
          ..add('cargo', cargo)
          ..add('loading', loading))
        .toString();
  }
}

class CargoParticularsBuilder
    implements Builder<CargoParticulars, CargoParticularsBuilder> {
  _$CargoParticulars? _$v;

  String? _cargoId;
  String? get cargoId => _$this._cargoId;
  set cargoId(String? cargoId) => _$this._cargoId = cargoId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(num? amount) => _$this._amount = amount;

  num? _exchangeRate;
  num? get exchangeRate => _$this._exchangeRate;
  set exchangeRate(num? exchangeRate) => _$this._exchangeRate = exchangeRate;

  num? _sumInsured;
  num? get sumInsured => _$this._sumInsured;
  set sumInsured(num? sumInsured) => _$this._sumInsured = sumInsured;

  CargoParticularsCurrencyEnum? _currency;
  CargoParticularsCurrencyEnum? get currency => _$this._currency;
  set currency(CargoParticularsCurrencyEnum? currency) =>
      _$this._currency = currency;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(String? bankName) => _$this._bankName = bankName;

  String? _loadingPort;
  String? get loadingPort => _$this._loadingPort;
  set loadingPort(String? loadingPort) => _$this._loadingPort = loadingPort;

  String? _destinationPort;
  String? get destinationPort => _$this._destinationPort;
  set destinationPort(String? destinationPort) =>
      _$this._destinationPort = destinationPort;

  String? _cacNumber;
  String? get cacNumber => _$this._cacNumber;
  set cacNumber(String? cacNumber) => _$this._cacNumber = cacNumber;

  String? _invoiceNumber;
  String? get invoiceNumber => _$this._invoiceNumber;
  set invoiceNumber(String? invoiceNumber) =>
      _$this._invoiceNumber = invoiceNumber;

  String? _tinNumber;
  String? get tinNumber => _$this._tinNumber;
  set tinNumber(String? tinNumber) => _$this._tinNumber = tinNumber;

  String? _lcNumber;
  String? get lcNumber => _$this._lcNumber;
  set lcNumber(String? lcNumber) => _$this._lcNumber = lcNumber;

  String? _cargo;
  String? get cargo => _$this._cargo;
  set cargo(String? cargo) => _$this._cargo = cargo;

  num? _loading;
  num? get loading => _$this._loading;
  set loading(num? loading) => _$this._loading = loading;

  CargoParticularsBuilder() {
    CargoParticulars._defaults(this);
  }

  CargoParticularsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cargoId = $v.cargoId;
      _amount = $v.amount;
      _exchangeRate = $v.exchangeRate;
      _sumInsured = $v.sumInsured;
      _currency = $v.currency;
      _bankName = $v.bankName;
      _loadingPort = $v.loadingPort;
      _destinationPort = $v.destinationPort;
      _cacNumber = $v.cacNumber;
      _invoiceNumber = $v.invoiceNumber;
      _tinNumber = $v.tinNumber;
      _lcNumber = $v.lcNumber;
      _cargo = $v.cargo;
      _loading = $v.loading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CargoParticulars other) {
    _$v = other as _$CargoParticulars;
  }

  @override
  void update(void Function(CargoParticularsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CargoParticulars build() => _build();

  _$CargoParticulars _build() {
    final _$result = _$v ??
        _$CargoParticulars._(
          cargoId: cargoId,
          amount: amount,
          exchangeRate: exchangeRate,
          sumInsured: sumInsured,
          currency: currency,
          bankName: bankName,
          loadingPort: loadingPort,
          destinationPort: destinationPort,
          cacNumber: cacNumber,
          invoiceNumber: invoiceNumber,
          tinNumber: tinNumber,
          lcNumber: lcNumber,
          cargo: cargo,
          loading: loading,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
