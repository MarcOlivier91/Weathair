import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

class OtherInfos extends StatefulWidget {
  const OtherInfos({super.key});

  @override
  State<OtherInfos> createState() => OtherInfosState();
}

class OtherInfosState extends State<OtherInfos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            ),
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(20),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Wind Infos", style: TextStyle(fontWeight: FontWeight.w700)),
                    BoxedIcon(WeatherIcons.windy),
                    Text("XX km/h", style: TextStyle(fontWeight: FontWeight.w400),),
                    Text("Direction : TBA", style: TextStyle(fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
            Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Humidity", style: TextStyle(fontWeight: FontWeight.w700),),
                    BoxedIcon(WeatherIcons.humidity),
                    Text("XX %", style: TextStyle(fontWeight: FontWeight.w400),),
                  ],
                ),),

            Container(
              decoration: BoxDecoration(
                color: Colors.lime,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("UV", style: TextStyle(fontWeight: FontWeight.w700),),
                    BoxedIcon(WeatherIcons.sunrise),
                    Text("Value", style: TextStyle(fontWeight: FontWeight.w400),),
                  ],
                ),),

            Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Pression", style: TextStyle(fontWeight: FontWeight.w700),),
                    Icon(Icons.question_mark),
                    Text("XX hPa (hectoPascal)", style: TextStyle(fontWeight: FontWeight.w400),), // Delete "hectopastal" after
                  ],
                ),),
          ],
          ),
      )
    );
  }
}