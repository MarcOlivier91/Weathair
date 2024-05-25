import 'package:flutter/material.dart';
import 'package:weatherapp/utils/layout.dart';
import 'package:weatherapp/utils/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HourlyPrevisions extends StatefulWidget {
  const HourlyPrevisions({super.key});

  @override
  State<HourlyPrevisions> createState() => HourlyPrevisionsView();
}

class HourlyPrevisionsView extends State<HourlyPrevisions> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: const EdgeInsets.only(top:15.0),
      child: SizedBox(
          width: size.width,
          height: 70,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),        
          child: SizedBox(
            height: 250,
            width: 150,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 14,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    color: Styles.hourlyColumn,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const Text("12:00", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                      SvgPicture.asset("assets/sun-svgrepo-com.svg", width: 20, height: 20,),
                      const Text("XX°C", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
                    ],
                  ),
                );
              },
            ),
          ),
          ),
      ),
    );
  }
}