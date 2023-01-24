import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/cubits/weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/provider/weather_pronider.dart';
import 'package:weather_app/services/weather_services.dart';

class SearchPage extends StatelessWidget {
  String? cityName;
  VoidCallback? updateUi;

  SearchPage({this.updateUi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          // padding: const EdgeInsets.only(left: 16,right: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            // cursorColor: Colors.amber,
            // onChanged: (value) {
            //   print(value);
            // },
            onChanged: (data) {
              cityName = data;
            },
            onSubmitted: (data) async {
              cityName = data;
              BlocProvider.of<WeatherCubit>(context)
                  .getWeather(cityName: cityName!);
              BlocProvider.of<WeatherCubit>(context).cityName = cityName;
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              // prefixIcon: Icon(Icons.search),
              label: Text('Search'),
              suffixIcon: GestureDetector(
                  onTap: () async {
                    WeatherService service = WeatherService();
                    WeatherModel? weather =
                        await service.getWeather(cityName: cityName!);
                    // print(weather.toString());
                    BlocProvider.of<WeatherCubit>(context)
                        .getWeather(cityName: cityName!);
                    BlocProvider.of<WeatherCubit>(context).cityName= cityName;
                    BlocProvider.of<WeatherCubit>(context).weatherModel =
                        weather;
                    // weatherData = weather;
                    // updateUi!();
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.search)),
              border: OutlineInputBorder(),
              hintText: 'Enter a city',
            ),
          ),
        ),
      ),
    );
  }
}

WeatherModel? weatherData;
