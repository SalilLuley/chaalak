library root_dto;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'find.g.dart';

abstract class StationDtoResponse
    implements Built<StationDtoResponse, StationDtoResponseBuilder> {
  @BuiltValueField(wireName: 'entityStatus')
  int get entityStatus;
  @BuiltValueField(wireName: 'stationId')
  String get stationId;
  @BuiltValueField(wireName: 'slots')
  int get slots;
  @BuiltValueField(wireName: 'slotsAvailable')
  int get slotsAvailable;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'isDeleted')
  bool get isDeleted;
  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'location')
  Location get location;
  @BuiltValueField(wireName: 'slotPrefix')
  String get slotPrefix;

  StationDtoResponse._();

  factory StationDtoResponse([updates(StationDtoResponseBuilder b)]) =
      _$StationDtoResponse;

  static Serializer<StationDtoResponse> get serializer =>
      _$stationDtoResponseSerializer;
}

abstract class Location implements Built<Location, LocationBuilder> {
  @BuiltValueField(wireName: 'longitude')
  double get longitude;
  @BuiltValueField(wireName: 'latitude')
  double get latitude;

  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  static Serializer<Location> get serializer => _$locationSerializer;
}
