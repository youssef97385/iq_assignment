// GENERATED CODE - DO NOT MODIFY BY HAND

part of section_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SectionModel> _$sectionModelSerializer =
    new _$SectionModelSerializer();

class _$SectionModelSerializer implements StructuredSerializer<SectionModel> {
  @override
  final Iterable<Type> types = const [SectionModel, _$SectionModel];
  @override
  final String wireName = 'SectionModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SectionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ItemModel)])),
    ];
    Object value;
    value = object.sectionType;
    if (value != null) {
      result
        ..add('sectionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sectionTitle;
    if (value != null) {
      result
        ..add('sectionTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SectionModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SectionModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sectionType':
          result.sectionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sectionTitle':
          result.sectionTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemModel)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SectionModel extends SectionModel {
  @override
  final String sectionType;
  @override
  final String sectionTitle;
  @override
  final BuiltList<ItemModel> items;

  factory _$SectionModel([void Function(SectionModelBuilder) updates]) =>
      (new SectionModelBuilder()..update(updates)).build();

  _$SectionModel._({this.sectionType, this.sectionTitle, this.items})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(items, 'SectionModel', 'items');
  }

  @override
  SectionModel rebuild(void Function(SectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionModelBuilder toBuilder() => new SectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SectionModel &&
        sectionType == other.sectionType &&
        sectionTitle == other.sectionTitle &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sectionType.hashCode), sectionTitle.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SectionModel')
          ..add('sectionType', sectionType)
          ..add('sectionTitle', sectionTitle)
          ..add('items', items))
        .toString();
  }
}

class SectionModelBuilder
    implements Builder<SectionModel, SectionModelBuilder> {
  _$SectionModel _$v;

  String _sectionType;
  String get sectionType => _$this._sectionType;
  set sectionType(String sectionType) => _$this._sectionType = sectionType;

  String _sectionTitle;
  String get sectionTitle => _$this._sectionTitle;
  set sectionTitle(String sectionTitle) => _$this._sectionTitle = sectionTitle;

  ListBuilder<ItemModel> _items;
  ListBuilder<ItemModel> get items =>
      _$this._items ??= new ListBuilder<ItemModel>();
  set items(ListBuilder<ItemModel> items) => _$this._items = items;

  SectionModelBuilder();

  SectionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sectionType = $v.sectionType;
      _sectionTitle = $v.sectionTitle;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SectionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SectionModel;
  }

  @override
  void update(void Function(SectionModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SectionModel build() {
    _$SectionModel _$result;
    try {
      _$result = _$v ??
          new _$SectionModel._(
              sectionType: sectionType,
              sectionTitle: sectionTitle,
              items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SectionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
