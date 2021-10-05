// GENERATED CODE - DO NOT MODIFY BY HAND

part of store_item_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StoreItemModel> _$storeItemModelSerializer =
    new _$StoreItemModelSerializer();

class _$StoreItemModelSerializer
    implements StructuredSerializer<StoreItemModel> {
  @override
  final Iterable<Type> types = const [StoreItemModel, _$StoreItemModel];
  @override
  final String wireName = 'StoreItemModel';

  @override
  Iterable<Object> serialize(Serializers serializers, StoreItemModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.item;
    if (value != null) {
      result
        ..add('item')
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
  StoreItemModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoreItemModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'item':
          result.item = serializers.deserialize(value,
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

class _$StoreItemModel extends StoreItemModel {
  @override
  final String item;
  @override
  final String image;

  factory _$StoreItemModel([void Function(StoreItemModelBuilder) updates]) =>
      (new StoreItemModelBuilder()..update(updates)).build();

  _$StoreItemModel._({this.item, this.image}) : super._();

  @override
  StoreItemModel rebuild(void Function(StoreItemModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoreItemModelBuilder toBuilder() =>
      new StoreItemModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoreItemModel &&
        item == other.item &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, item.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StoreItemModel')
          ..add('item', item)
          ..add('image', image))
        .toString();
  }
}

class StoreItemModelBuilder
    implements Builder<StoreItemModel, StoreItemModelBuilder> {
  _$StoreItemModel _$v;

  String _item;
  String get item => _$this._item;
  set item(String item) => _$this._item = item;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  StoreItemModelBuilder();

  StoreItemModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item;
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoreItemModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StoreItemModel;
  }

  @override
  void update(void Function(StoreItemModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StoreItemModel build() {
    final _$result = _$v ?? new _$StoreItemModel._(item: item, image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
