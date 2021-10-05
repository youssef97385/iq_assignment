// GENERATED CODE - DO NOT MODIFY BY HAND

part of category_item_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryItemModel> _$categoryItemModelSerializer =
    new _$CategoryItemModelSerializer();

class _$CategoryItemModelSerializer
    implements StructuredSerializer<CategoryItemModel> {
  @override
  final Iterable<Type> types = const [CategoryItemModel, _$CategoryItemModel];
  @override
  final String wireName = 'CategoryItemModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CategoryItemModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryItemModel extends CategoryItemModel {
  @override
  final String title;
  @override
  final String image;

  factory _$CategoryItemModel(
          [void Function(CategoryItemModelBuilder) updates]) =>
      (new CategoryItemModelBuilder()..update(updates)).build();

  _$CategoryItemModel._({this.title, this.image}) : super._();

  @override
  CategoryItemModel rebuild(void Function(CategoryItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryItemModelBuilder toBuilder() =>
      new CategoryItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryItemModel &&
        title == other.title &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryItemModel')
          ..add('title', title)
          ..add('image', image))
        .toString();
  }
}

class CategoryItemModelBuilder
    implements Builder<CategoryItemModel, CategoryItemModelBuilder> {
  _$CategoryItemModel _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  CategoryItemModelBuilder();

  CategoryItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryItemModel;
  }

  @override
  void update(void Function(CategoryItemModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryItemModel build() {
    final _$result =
        _$v ?? new _$CategoryItemModel._(title: title, image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
