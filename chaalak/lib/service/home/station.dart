import 'package:built_collection/built_collection.dart';
import 'package:chaalak/data/build_value_converter.dart';
import 'package:chaalak/model/stations/find.dart';
import 'package:chaalak/network_layer/base_url.dart';
import 'package:chopper/chopper.dart';

part 'station.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class StationService extends ChopperService {
  @Get(path: 'station/all')
  Future<Response<BuiltList<StationDtoResponse>>> find();

  static StationService create() {
    final client = ChopperClient(
        baseUrl: DEV_BASE_URL,
        services: [_$StationService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$StationService(client);
  }
}
