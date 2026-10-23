// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annuity_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnnuitySetting extends AnnuitySetting {
  @override
  final num? standingOrderDay;

  factory _$AnnuitySetting([void Function(AnnuitySettingBuilder)? updates]) =>
      (AnnuitySettingBuilder()..update(updates))._build();

  _$AnnuitySetting._({this.standingOrderDay}) : super._();
  @override
  AnnuitySetting rebuild(void Function(AnnuitySettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnnuitySettingBuilder toBuilder() => AnnuitySettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnnuitySetting &&
        standingOrderDay == other.standingOrderDay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, standingOrderDay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnnuitySetting')
          ..add('standingOrderDay', standingOrderDay))
        .toString();
  }
}

class AnnuitySettingBuilder
    implements Builder<AnnuitySetting, AnnuitySettingBuilder> {
  _$AnnuitySetting? _$v;

  num? _standingOrderDay;
  num? get standingOrderDay => _$this._standingOrderDay;
  set standingOrderDay(num? standingOrderDay) =>
      _$this._standingOrderDay = standingOrderDay;

  AnnuitySettingBuilder() {
    AnnuitySetting._defaults(this);
  }

  AnnuitySettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _standingOrderDay = $v.standingOrderDay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnnuitySetting other) {
    _$v = other as _$AnnuitySetting;
  }

  @override
  void update(void Function(AnnuitySettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnnuitySetting build() => _build();

  _$AnnuitySetting _build() {
    final _$result = _$v ??
        _$AnnuitySetting._(
          standingOrderDay: standingOrderDay,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
