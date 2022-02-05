import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:chaalak/model/stations/find.dart';

part 'serializers.g.dart';

@SerializersFor(const [StationDtoResponse])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
