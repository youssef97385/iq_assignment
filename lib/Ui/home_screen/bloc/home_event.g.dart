// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetHomeData extends GetHomeData {
  factory _$GetHomeData([void Function(GetHomeDataBuilder) updates]) =>
      (new GetHomeDataBuilder()..update(updates)).build();

  _$GetHomeData._() : super._();

  @override
  GetHomeData rebuild(void Function(GetHomeDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetHomeDataBuilder toBuilder() => new GetHomeDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetHomeData;
  }

  @override
  int get hashCode {
    return 111567064;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GetHomeData').toString();
  }
}

class GetHomeDataBuilder implements Builder<GetHomeData, GetHomeDataBuilder> {
  _$GetHomeData _$v;

  GetHomeDataBuilder();

  @override
  void replace(GetHomeData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetHomeData;
  }

  @override
  void update(void Function(GetHomeDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetHomeData build() {
    final _$result = _$v ?? new _$GetHomeData._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
