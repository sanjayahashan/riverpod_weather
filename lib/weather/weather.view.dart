import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_weather/repositories/model/weather_repository.model.dart';
import 'package:riverpod_weather/weather/weather_provider.dart';
import 'package:riverpod_weather/weather/widgets/weather_error.dart';
import 'package:riverpod_weather/weather/widgets/weather_loading.dart';
import 'package:riverpod_weather/weather/widgets/weather_populated.dart';

class WeatherView extends ConsumerWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncWeather = ref.watch(asyncWeatherProvider(41.85003, -87.65005));

    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Details'),
      ),
      body: asyncWeather.when(
        data: (data) {
          return WeatherPopulated(
            onRefresh: () => ref
                .read(asyncWeatherProvider.call(41.85003, -87.65005).notifier)
                .getWeather(41.85003, -87.65005),
            weather: data,
          );
        },
        error: (error, stackTrace) => WeatherError(),
        loading: () => WeatherLoading(),
      ),
    );
  }
}
