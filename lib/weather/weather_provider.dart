import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_weather/repositories/weather.repository.dart';

import '../repositories/model/weather_repository.model.dart';

part 'weather_provider.g.dart';

@riverpod
class AsyncWeather extends _$AsyncWeather {
  @override
  FutureOr<Weather?> build(double latitude, double longitude) async {
    return getWeather(latitude, longitude);
  }

  Future<Weather?> getWeather(double latitude, double longitude) async {
    Weather? weather = await ref
        .watch(weatherRepositoryProvider)
        .getForecast(latitude, longitude);
    return weather;
  }
}
