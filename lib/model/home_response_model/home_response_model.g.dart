// GENERATED CODE - DO NOT MODIFY BY HAND

part of home_response_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HomeResponseModel> _$homeResponseModelSerializer =
    new _$HomeResponseModelSerializer();

class _$HomeResponseModelSerializer
    implements StructuredSerializer<HomeResponseModel> {
  @override
  final Iterable<Type> types = const [HomeResponseModel, _$HomeResponseModel];
  @override
  final String wireName = 'HomeResponseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, HomeResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.sections;
    if (value != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SectionModel)])));
    }
    return result;
  }

  @override
  HomeResponseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HomeResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SectionModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$HomeResponseModel extends HomeResponseModel {
  @override
  final BuiltList<SectionModel> sections;

  factory _$HomeResponseModel(
          [void Function(HomeResponseModelBuilder) updates]) =>
      (new HomeResponseModelBuilder()..update(updates)).build();

  _$HomeResponseModel._({this.sections}) : super._();

  @override
  HomeResponseModel rebuild(void Function(HomeResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeResponseModelBuilder toBuilder() =>
      new HomeResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeResponseModel && sections == other.sections;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HomeResponseModel')
          ..add('sections', sections))
        .toString();
  }
}

class HomeResponseModelBuilder
    implements Builder<HomeResponseModel, HomeResponseModelBuilder> {
  _$HomeResponseModel _$v;

  ListBuilder<SectionModel> _sections;
  ListBuilder<SectionModel> get sections =>
      _$this._sections ??= new ListBuilder<SectionModel>();
  set sections(ListBuilder<SectionModel> sections) =>
      _$this._sections = sections;

  HomeResponseModelBuilder();

  HomeResponseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sections = $v.sections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeResponseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeResponseModel;
  }

  @override
  void update(void Function(HomeResponseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HomeResponseModel build() {
    _$HomeResponseModel _$result;
    try {
      _$result = _$v ?? new _$HomeResponseModel._(sections: _sections?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HomeResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
