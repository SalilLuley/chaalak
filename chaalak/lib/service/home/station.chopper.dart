// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$StationService extends StationService {
  _$StationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = StationService;

  @override
  Future<Response<BuiltList<StationDtoResponse>>> find() {
    final $url = '/station/all';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<BuiltList<StationDtoResponse>, StationDtoResponse>($request);
  }
}
