// GENERATED CODE - DO NOT MODIFY BY HAND

part of contact_model;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactModel> _$contactModelSerializer =
    new _$ContactModelSerializer();

class _$ContactModelSerializer implements StructuredSerializer<ContactModel> {
  @override
  final Iterable<Type> types = const [ContactModel, _$ContactModel];
  @override
  final String wireName = 'ContactModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ContactModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(String)),
      'long',
      serializers.serialize(object.long, specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
      'open_day',
      serializers.serialize(object.openDay,
          specifiedType: const FullType(String)),
      'close_day',
      serializers.serialize(object.closedDay,
          specifiedType: const FullType(String)),
      'open_hour',
      serializers.serialize(object.openHour,
          specifiedType: const FullType(String)),
      'close_hour',
      serializers.serialize(object.closeHour,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ContactModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'long':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open_day':
          result.openDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'close_day':
          result.closedDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'open_hour':
          result.openHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'close_hour':
          result.closeHour = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactModel extends ContactModel {
  @override
  final String address;
  @override
  final String location;
  @override
  final String long;
  @override
  final String lat;
  @override
  final String openDay;
  @override
  final String closedDay;
  @override
  final String openHour;
  @override
  final String closeHour;

  factory _$ContactModel([void Function(ContactModelBuilder) updates]) =>
      (new ContactModelBuilder()..update(updates)).build();

  _$ContactModel._(
      {this.address,
      this.location,
      this.long,
      this.lat,
      this.openDay,
      this.closedDay,
      this.openHour,
      this.closeHour})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(address, 'ContactModel', 'address');
    BuiltValueNullFieldError.checkNotNull(location, 'ContactModel', 'location');
    BuiltValueNullFieldError.checkNotNull(long, 'ContactModel', 'long');
    BuiltValueNullFieldError.checkNotNull(lat, 'ContactModel', 'lat');
    BuiltValueNullFieldError.checkNotNull(openDay, 'ContactModel', 'openDay');
    BuiltValueNullFieldError.checkNotNull(
        closedDay, 'ContactModel', 'closedDay');
    BuiltValueNullFieldError.checkNotNull(openHour, 'ContactModel', 'openHour');
    BuiltValueNullFieldError.checkNotNull(
        closeHour, 'ContactModel', 'closeHour');
  }

  @override
  ContactModel rebuild(void Function(ContactModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactModelBuilder toBuilder() => new ContactModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactModel &&
        address == other.address &&
        location == other.location &&
        long == other.long &&
        lat == other.lat &&
        openDay == other.openDay &&
        closedDay == other.closedDay &&
        openHour == other.openHour &&
        closeHour == other.closeHour;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, address.hashCode), location.hashCode),
                            long.hashCode),
                        lat.hashCode),
                    openDay.hashCode),
                closedDay.hashCode),
            openHour.hashCode),
        closeHour.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContactModel')
          ..add('address', address)
          ..add('location', location)
          ..add('long', long)
          ..add('lat', lat)
          ..add('openDay', openDay)
          ..add('closedDay', closedDay)
          ..add('openHour', openHour)
          ..add('closeHour', closeHour))
        .toString();
  }
}

class ContactModelBuilder
    implements Builder<ContactModel, ContactModelBuilder> {
  _$ContactModel _$v;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _long;
  String get long => _$this._long;
  set long(String long) => _$this._long = long;

  String _lat;
  String get lat => _$this._lat;
  set lat(String lat) => _$this._lat = lat;

  String _openDay;
  String get openDay => _$this._openDay;
  set openDay(String openDay) => _$this._openDay = openDay;

  String _closedDay;
  String get closedDay => _$this._closedDay;
  set closedDay(String closedDay) => _$this._closedDay = closedDay;

  String _openHour;
  String get openHour => _$this._openHour;
  set openHour(String openHour) => _$this._openHour = openHour;

  String _closeHour;
  String get closeHour => _$this._closeHour;
  set closeHour(String closeHour) => _$this._closeHour = closeHour;

  ContactModelBuilder();

  ContactModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _location = $v.location;
      _long = $v.long;
      _lat = $v.lat;
      _openDay = $v.openDay;
      _closedDay = $v.closedDay;
      _openHour = $v.openHour;
      _closeHour = $v.closeHour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactModel;
  }

  @override
  void update(void Function(ContactModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContactModel build() {
    final _$result = _$v ??
        new _$ContactModel._(
            address: BuiltValueNullFieldError.checkNotNull(
                address, 'ContactModel', 'address'),
            location: BuiltValueNullFieldError.checkNotNull(
                location, 'ContactModel', 'location'),
            long: BuiltValueNullFieldError.checkNotNull(
                long, 'ContactModel', 'long'),
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, 'ContactModel', 'lat'),
            openDay: BuiltValueNullFieldError.checkNotNull(
                openDay, 'ContactModel', 'openDay'),
            closedDay: BuiltValueNullFieldError.checkNotNull(
                closedDay, 'ContactModel', 'closedDay'),
            openHour: BuiltValueNullFieldError.checkNotNull(
                openHour, 'ContactModel', 'openHour'),
            closeHour: BuiltValueNullFieldError.checkNotNull(
                closeHour, 'ContactModel', 'closeHour'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
