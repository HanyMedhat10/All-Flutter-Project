import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubit.dart';
import 'package:weather_app/cubits/weather_cubit/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/search_page.dart';
import 'package:weather_app/provider/weather_pronider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(
              onPressed: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return SearchPage();
                    }),
                  ),
                );
              }),
              icon: Icon(Icons.search)),
        ],
      ),
      body: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is WeatherSuccess) {
            return SuccessBody(weatherData: state.weatherModel,);
          } else if (state is WeatherFailure) {
            return Center(
              child: Text('Something went wron please try again'),
            );
          } else {
            return DefaultBody();
          }
        },
      ),
    );
  }
}

class DefaultBody extends StatelessWidget {
  const DefaultBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'there is no weather 😌 start',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}

class SuccessBody extends StatelessWidget {
  SuccessBody({
    Key? key,
    required this.weatherData,
  }) : super(key: key);
  WeatherModel weatherData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            weatherData.getThemeColor(),
            weatherData.getThemeColor()[300]!,
            weatherData.getThemeColor()[100]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      color: weatherData.getThemeColor(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 3,
          ),
          Text(
            '${BlocProvider.of<WeatherCubit>(context).cityName!}',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'updated:${weatherData.date.hour.toString()}:${weatherData.date.minute.toString()}',
            style: TextStyle(fontSize: 22),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(weatherData.getImage()),
              Text(
                '${weatherData.temp.toInt()}',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                children: [
                  Text('maxTemp: ${weatherData.maxTemp.toInt()}'),
                  Text('minTemp: ${weatherData.minTemp.toInt()}'),
                ],
              )
            ],
          ),
          Spacer(),
          Text(
            weatherData.weatherStateName ,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
