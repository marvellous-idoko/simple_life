// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pre_loss_query_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PreLossQueryResponse extends PreLossQueryResponse {
  @override
  final String? response;
  @override
  final String? queryId;

  factory _$PreLossQueryResponse(
          [void Function(PreLossQueryResponseBuilder)? updates]) =>
      (PreLossQueryResponseBuilder()..update(updates))._build();

  _$PreLossQueryResponse._({this.response, this.queryId}) : super._();
  @override
  PreLossQueryResponse rebuild(
          void Function(PreLossQueryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PreLossQueryResponseBuilder toBuilder() =>
      PreLossQueryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PreLossQueryResponse &&
        response == other.response &&
        queryId == other.queryId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, queryId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PreLossQueryResponse')
          ..add('response', response)
          ..add('queryId', queryId))
        .toString();
  }
}

class PreLossQueryResponseBuilder
    implements Builder<PreLossQueryResponse, PreLossQueryResponseBuilder> {
  _$PreLossQueryResponse? _$v;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _queryId;
  String? get queryId => _$this._queryId;
  set queryId(String? queryId) => _$this._queryId = queryId;

  PreLossQueryResponseBuilder() {
    PreLossQueryResponse._defaults(this);
  }

  PreLossQueryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response;
      _queryId = $v.queryId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PreLossQueryResponse other) {
    _$v = other as _$PreLossQueryResponse;
  }

  @override
  void update(void Function(PreLossQueryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PreLossQueryResponse build() => _build();

  _$PreLossQueryResponse _build() {
    final _$result = _$v ??
        _$PreLossQueryResponse._(
          response: response,
          queryId: queryId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
