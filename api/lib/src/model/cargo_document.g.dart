// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo_document.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CargoDocument extends CargoDocument {
  @override
  final String? customerId;
  @override
  final BuiltList<CargoDocumentCargoesInner>? cargoes;

  factory _$CargoDocument([void Function(CargoDocumentBuilder)? updates]) =>
      (CargoDocumentBuilder()..update(updates))._build();

  _$CargoDocument._({this.customerId, this.cargoes}) : super._();
  @override
  CargoDocument rebuild(void Function(CargoDocumentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CargoDocumentBuilder toBuilder() => CargoDocumentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CargoDocument &&
        customerId == other.customerId &&
        cargoes == other.cargoes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, cargoes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CargoDocument')
          ..add('customerId', customerId)
          ..add('cargoes', cargoes))
        .toString();
  }
}

class CargoDocumentBuilder
    implements Builder<CargoDocument, CargoDocumentBuilder> {
  _$CargoDocument? _$v;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  ListBuilder<CargoDocumentCargoesInner>? _cargoes;
  ListBuilder<CargoDocumentCargoesInner> get cargoes =>
      _$this._cargoes ??= ListBuilder<CargoDocumentCargoesInner>();
  set cargoes(ListBuilder<CargoDocumentCargoesInner>? cargoes) =>
      _$this._cargoes = cargoes;

  CargoDocumentBuilder() {
    CargoDocument._defaults(this);
  }

  CargoDocumentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerId = $v.customerId;
      _cargoes = $v.cargoes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CargoDocument other) {
    _$v = other as _$CargoDocument;
  }

  @override
  void update(void Function(CargoDocumentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CargoDocument build() => _build();

  _$CargoDocument _build() {
    _$CargoDocument _$result;
    try {
      _$result = _$v ??
          _$CargoDocument._(
            customerId: customerId,
            cargoes: _cargoes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cargoes';
        _cargoes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CargoDocument', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
