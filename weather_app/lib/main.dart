import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/cubits/weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weather_pronider.dart';
import 'package:weather_app/services/weather_services.dart';

void main() {
  runApp(BlocProvider(
        create: (context) => WeatherCubit(WeatherService()), child: WeatherApp()),
  );
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: BlocProvider.of<WeatherCubit>(context).weatherModel == null
            ? Colors.blue
            : BlocProvider.of<WeatherCubit>(context)
                .weatherModel!
                .getThemeColor(),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
