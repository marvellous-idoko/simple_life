// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo_document_cargoes_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CargoDocumentCargoesInner extends CargoDocumentCargoesInner {
  @override
  final String? cargoId;

  factory _$CargoDocumentCargoesInner(
          [void Function(CargoDocumentCargoesInnerBuilder)? updates]) =>
      (CargoDocumentCargoesInnerBuilder()..update(updates))._build();

  _$CargoDocumentCargoesInner._({this.cargoId}) : super._();
  @override
  CargoDocumentCargoesInner rebuild(
          void Function(CargoDocumentCargoesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CargoDocumentCargoesInnerBuilder toBuilder() =>
      CargoDocumentCargoesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CargoDocumentCargoesInner && cargoId == other.cargoId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cargoId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CargoDocumentCargoesInner')
          ..add('cargoId', cargoId))
        .toString();
  }
}

class CargoDocumentCargoesInnerBuilder
    implements
        Builder<CargoDocumentCargoesInner, CargoDocumentCargoesInnerBuilder> {
  _$CargoDocumentCargoesInner? _$v;

  String? _cargoId;
  String? get cargoId => _$this._cargoId;
  set cargoId(String? cargoId) => _$this._cargoId = cargoId;

  CargoDocumentCargoesInnerBuilder() {
    CargoDocumentCargoesInner._defaults(this);
  }

  CargoDocumentCargoesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cargoId = $v.cargoId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CargoDocumentCargoesInner other) {
    _$v = other as _$CargoDocumentCargoesInner;
  }

  @override
  void update(void Function(CargoDocumentCargoesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CargoDocumentCargoesInner build() => _build();

  _$CargoDocumentCargoesInner _build() {
    final _$result = _$v ??
        _$CargoDocumentCargoesInner._(
          cargoId: cargoId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
