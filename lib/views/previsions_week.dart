import 'package:flutter/material.dart';
import 'package:weatherapp/utils/layout.dart';
import '../utils/styles.dart';

class PrevisionsWeek extends StatefulWidget {
  const PrevisionsWeek({super.key});

  @override
  State<PrevisionsWeek> createState() => PrevisionsWeekView();
}

class PrevisionsWeekView extends State<PrevisionsWeek> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 380,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            children: [   
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                  margin: const EdgeInsets.only(bottom: 6.0),
                  child: Text("Coming...", style: Styles.previsionsWeekHeader,),
                  ),
               ],
             ),              
             for(int i =0; i < 7; i++)
              Container(
                margin: const EdgeInsets.only(top:6.0, bottom:6.0),
                child: Row(
                  children: [                
                    Text("Day here ", style: Styles.previsions,),
                    const Spacer(),
                    Text("°C", style: Styles.previsions,),
                    Text(" / ", style: Styles.previsions,),
                    Text("°F", style: Styles.previsions,),               
                  ],                  
                ),
              )               
            ],              
          ),             
        ),
      ),
    );
  }
}