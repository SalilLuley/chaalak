import 'package:chaalak/data/build_value_converter.dart';
import 'package:chaalak/model/stations/find.dart';
import 'package:chopper/chopper.dart';

part 'station.chopper.dart';

@ChopperApi(baseUrl: "/")
abstract class StationService extends ChopperService {
  @Get(path: 'api/user/shop/category/list')
  Future<Response<StationDtoResponse>> categoryList();

  static StationService create() {
    final client = ChopperClient(
        baseUrl: '',
        services: [_$StationService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$StationService(client);
  }
}
