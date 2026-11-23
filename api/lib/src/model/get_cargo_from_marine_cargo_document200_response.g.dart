// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cargo_from_marine_cargo_document200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum
    _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_USD =
    const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum._('USD');
const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum
    _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_GPB =
    const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum._('GPB');
const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum
    _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_EUR =
    const GetCargoFromMarineCargoDocument200ResponseCurrencyEnum._('EUR');

GetCargoFromMarineCargoDocument200ResponseCurrencyEnum
    _$getCargoFromMarineCargoDocument200ResponseCurrencyEnumValueOf(
        String name) {
  switch (name) {
    case 'USD':
      return _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_USD;
    case 'GPB':
      return _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_GPB;
    case 'EUR':
      return _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_EUR;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GetCargoFromMarineCargoDocument200ResponseCurrencyEnum>
    _$getCargoFromMarineCargoDocument200ResponseCurrencyEnumValues = BuiltSet<
        GetCargoFromMarineCargoDocument200ResponseCurrencyEnum>(const <GetCargoFromMarineCargoDocument200ResponseCurrencyEnum>[
  _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_USD,
  _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_GPB,
  _$getCargoFromMarineCargoDocument200ResponseCurrencyEnum_EUR,
]);

Serializer<GetCargoFromMarineCargoDocument200ResponseCurrencyEnum>
    _$getCargoFromMarineCargoDocument200ResponseCurrencyEnumSerializer =
    _$GetCargoFromMarineCargoDocument200ResponseCurrencyEnumSerializer();

class _$GetCargoFromMarineCargoDocument200ResponseCurrencyEnumSerializer
    implements
        PrimitiveSerializer<
            GetCargoFromMarineCargoDocument200ResponseCurrencyEnum> {
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
  final Iterable<Type> types = const <Type>[
    GetCargoFromMarineCargoDocument200ResponseCurrencyEnum
  ];
  @override
  final String wireName =
      'GetCargoFromMarineCargoDocument200ResponseCurrencyEnum';

  @override
  Object serialize(Serializers serializers,
          GetCargoFromMarineCargoDocument200ResponseCurrencyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GetCargoFromMarineCargoDocument200ResponseCurrencyEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GetCargoFromMarineCargoDocument200ResponseCurrencyEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GetCargoFromMarineCargoDocument200Response
    extends GetCargoFromMarineCargoDocument200Response {
  @override
  final num? premium;
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

  factory _$GetCargoFromMarineCargoDocument200Response(
          [void Function(GetCargoFromMarineCargoDocument200ResponseBuilder)?
              updates]) =>
      (GetCargoFromMarineCargoDocument200ResponseBuilder()..update(updates))
          ._build();

  _$GetCargoFromMarineCargoDocument200Response._(
      {this.premium,
      this.cargoId,
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
  GetCargoFromMarineCargoDocument200Response rebuild(
          void Function(GetCargoFromMarineCargoDocument200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCargoFromMarineCargoDocument200ResponseBuilder toBuilder() =>
      GetCargoFromMarineCargoDocument200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCargoFromMarineCargoDocument200Response &&
        premium == other.premium &&
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
    _$hash = $jc(_$hash, premium.hashCode);
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
    return (newBuiltValueToStringHelper(
            r'GetCargoFromMarineCargoDocument200Response')
          ..add('premium', premium)
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

class GetCargoFromMarineCargoDocument200ResponseBuilder
    implements
        Builder<GetCargoFromMarineCargoDocument200Response,
            GetCargoFromMarineCargoDocument200ResponseBuilder>,
        CargoParticularsBuilder {
  _$GetCargoFromMarineCargoDocument200Response? _$v;

  num? _premium;
  num? get premium => _$this._premium;
  set premium(covariant num? premium) => _$this._premium = premium;

  String? _cargoId;
  String? get cargoId => _$this._cargoId;
  set cargoId(covariant String? cargoId) => _$this._cargoId = cargoId;

  num? _amount;
  num? get amount => _$this._amount;
  set amount(covariant num? amount) => _$this._amount = amount;

  num? _exchangeRate;
  num? get exchangeRate => _$this._exchangeRate;
  set exchangeRate(covariant num? exchangeRate) =>
      _$this._exchangeRate = exchangeRate;

  num? _sumInsured;
  num? get sumInsured => _$this._sumInsured;
  set sumInsured(covariant num? sumInsured) => _$this._sumInsured = sumInsured;

  CargoParticularsCurrencyEnum? _currency;
  CargoParticularsCurrencyEnum? get currency => _$this._currency;
  set currency(covariant CargoParticularsCurrencyEnum? currency) =>
      _$this._currency = currency;

  String? _bankName;
  String? get bankName => _$this._bankName;
  set bankName(covariant String? bankName) => _$this._bankName = bankName;

  String? _loadingPort;
  String? get loadingPort => _$this._loadingPort;
  set loadingPort(covariant String? loadingPort) =>
      _$this._loadingPort = loadingPort;

  String? _destinationPort;
  String? get destinationPort => _$this._destinationPort;
  set destinationPort(covariant String? destinationPort) =>
      _$this._destinationPort = destinationPort;

  String? _cacNumber;
  String? get cacNumber => _$this._cacNumber;
  set cacNumber(covariant String? cacNumber) => _$this._cacNumber = cacNumber;

  String? _invoiceNumber;
  String? get invoiceNumber => _$this._invoiceNumber;
  set invoiceNumber(covariant String? invoiceNumber) =>
      _$this._invoiceNumber = invoiceNumber;

  String? _tinNumber;
  String? get tinNumber => _$this._tinNumber;
  set tinNumber(covariant String? tinNumber) => _$this._tinNumber = tinNumber;

  String? _lcNumber;
  String? get lcNumber => _$this._lcNumber;
  set lcNumber(covariant String? lcNumber) => _$this._lcNumber = lcNumber;

  String? _cargo;
  String? get cargo => _$this._cargo;
  set cargo(covariant String? cargo) => _$this._cargo = cargo;

  num? _loading;
  num? get loading => _$this._loading;
  set loading(covariant num? loading) => _$this._loading = loading;

  GetCargoFromMarineCargoDocument200ResponseBuilder() {
    GetCargoFromMarineCargoDocument200Response._defaults(this);
  }

  GetCargoFromMarineCargoDocument200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _premium = $v.premium;
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
  void replace(covariant GetCargoFromMarineCargoDocument200Response other) {
    _$v = other as _$GetCargoFromMarineCargoDocument200Response;
  }

  @override
  void update(
      void Function(GetCargoFromMarineCargoDocument200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCargoFromMarineCargoDocument200Response build() => _build();

  _$GetCargoFromMarineCargoDocument200Response _build() {
    final _$result = _$v ??
        _$GetCargoFromMarineCargoDocument200Response._(
          premium: premium,
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
