// GENERATED CODE - DO NOT MODIFY BY HAND

part of root_dto;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StationDtoResponse> _$stationDtoResponseSerializer =
    new _$StationDtoResponseSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$StationDtoResponseSerializer
    implements StructuredSerializer<StationDtoResponse> {
  @override
  final Iterable<Type> types = const [StationDtoResponse, _$StationDtoResponse];
  @override
  final String wireName = 'StationDtoResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StationDtoResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'entityStatus',
      serializers.serialize(object.entityStatus,
          specifiedType: const FullType(int)),
      'stationId',
      serializers.serialize(object.stationId,
          specifiedType: const FullType(String)),
      'slots',
      serializers.serialize(object.slots, specifiedType: const FullType(int)),
      'slotsAvailable',
      serializers.serialize(object.slotsAvailable,
          specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'isDeleted',
      serializers.serialize(object.isDeleted,
          specifiedType: const FullType(bool)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
      'slotPrefix',
      serializers.serialize(object.slotPrefix,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  StationDtoResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StationDtoResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'entityStatus':
          result.entityStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stationId':
          result.stationId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slots':
          result.slots = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'slotsAvailable':
          result.slotsAvailable = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isDeleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
        case 'slotPrefix':
          result.slotPrefix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$StationDtoResponse extends StationDtoResponse {
  @override
  final int entityStatus;
  @override
  final String stationId;
  @override
  final int slots;
  @override
  final int slotsAvailable;
  @override
  final String description;
  @override
  final bool isDeleted;
  @override
  final String name;
  @override
  final Location location;
  @override
  final String slotPrefix;

  factory _$StationDtoResponse(
          [void Function(StationDtoResponseBuilder)? updates]) =>
      (new StationDtoResponseBuilder()..update(updates)).build();

  _$StationDtoResponse._(
      {required this.entityStatus,
      required this.stationId,
      required this.slots,
      required this.slotsAvailable,
      required this.description,
      required this.isDeleted,
      required this.name,
      required this.location,
      required this.slotPrefix})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        entityStatus, 'StationDtoResponse', 'entityStatus');
    BuiltValueNullFieldError.checkNotNull(
        stationId, 'StationDtoResponse', 'stationId');
    BuiltValueNullFieldError.checkNotNull(slots, 'StationDtoResponse', 'slots');
    BuiltValueNullFieldError.checkNotNull(
        slotsAvailable, 'StationDtoResponse', 'slotsAvailable');
    BuiltValueNullFieldError.checkNotNull(
        description, 'StationDtoResponse', 'description');
    BuiltValueNullFieldError.checkNotNull(
        isDeleted, 'StationDtoResponse', 'isDeleted');
    BuiltValueNullFieldError.checkNotNull(name, 'StationDtoResponse', 'name');
    BuiltValueNullFieldError.checkNotNull(
        location, 'StationDtoResponse', 'location');
    BuiltValueNullFieldError.checkNotNull(
        slotPrefix, 'StationDtoResponse', 'slotPrefix');
  }

  @override
  StationDtoResponse rebuild(
          void Function(StationDtoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StationDtoResponseBuilder toBuilder() =>
      new StationDtoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StationDtoResponse &&
        entityStatus == other.entityStatus &&
        stationId == other.stationId &&
        slots == other.slots &&
        slotsAvailable == other.slotsAvailable &&
        description == other.description &&
        isDeleted == other.isDeleted &&
        name == other.name &&
        location == other.location &&
        slotPrefix == other.slotPrefix;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, entityStatus.hashCode),
                                    stationId.hashCode),
                                slots.hashCode),
                            slotsAvailable.hashCode),
                        description.hashCode),
                    isDeleted.hashCode),
                name.hashCode),
            location.hashCode),
        slotPrefix.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StationDtoResponse')
          ..add('entityStatus', entityStatus)
          ..add('stationId', stationId)
          ..add('slots', slots)
          ..add('slotsAvailable', slotsAvailable)
          ..add('description', description)
          ..add('isDeleted', isDeleted)
          ..add('name', name)
          ..add('location', location)
          ..add('slotPrefix', slotPrefix))
        .toString();
  }
}

class StationDtoResponseBuilder
    implements Builder<StationDtoResponse, StationDtoResponseBuilder> {
  _$StationDtoResponse? _$v;

  int? _entityStatus;
  int? get entityStatus => _$this._entityStatus;
  set entityStatus(int? entityStatus) => _$this._entityStatus = entityStatus;

  String? _stationId;
  String? get stationId => _$this._stationId;
  set stationId(String? stationId) => _$this._stationId = stationId;

  int? _slots;
  int? get slots => _$this._slots;
  set slots(int? slots) => _$this._slots = slots;

  int? _slotsAvailable;
  int? get slotsAvailable => _$this._slotsAvailable;
  set slotsAvailable(int? slotsAvailable) =>
      _$this._slotsAvailable = slotsAvailable;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  String? _slotPrefix;
  String? get slotPrefix => _$this._slotPrefix;
  set slotPrefix(String? slotPrefix) => _$this._slotPrefix = slotPrefix;

  StationDtoResponseBuilder();

  StationDtoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityStatus = $v.entityStatus;
      _stationId = $v.stationId;
      _slots = $v.slots;
      _slotsAvailable = $v.slotsAvailable;
      _description = $v.description;
      _isDeleted = $v.isDeleted;
      _name = $v.name;
      _location = $v.location.toBuilder();
      _slotPrefix = $v.slotPrefix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StationDtoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StationDtoResponse;
  }

  @override
  void update(void Function(StationDtoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StationDtoResponse build() {
    _$StationDtoResponse _$result;
    try {
      _$result = _$v ??
          new _$StationDtoResponse._(
              entityStatus: BuiltValueNullFieldError.checkNotNull(
                  entityStatus, 'StationDtoResponse', 'entityStatus'),
              stationId: BuiltValueNullFieldError.checkNotNull(
                  stationId, 'StationDtoResponse', 'stationId'),
              slots: BuiltValueNullFieldError.checkNotNull(
                  slots, 'StationDtoResponse', 'slots'),
              slotsAvailable: BuiltValueNullFieldError.checkNotNull(
                  slotsAvailable, 'StationDtoResponse', 'slotsAvailable'),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'StationDtoResponse', 'description'),
              isDeleted: BuiltValueNullFieldError.checkNotNull(
                  isDeleted, 'StationDtoResponse', 'isDeleted'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'StationDtoResponse', 'name'),
              location: location.build(),
              slotPrefix: BuiltValueNullFieldError.checkNotNull(
                  slotPrefix, 'StationDtoResponse', 'slotPrefix'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StationDtoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final double longitude;
  @override
  final double latitude;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._({required this.longitude, required this.latitude}) : super._() {
    BuiltValueNullFieldError.checkNotNull(longitude, 'Location', 'longitude');
    BuiltValueNullFieldError.checkNotNull(latitude, 'Location', 'latitude');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        longitude == other.longitude &&
        latitude == other.latitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, longitude.hashCode), latitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('longitude', longitude)
          ..add('latitude', latitude))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'Location', 'longitude'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'Location', 'latitude'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
