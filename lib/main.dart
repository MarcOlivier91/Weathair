import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp/client/client.dart';
import 'package:weatherapp/model/model.dart';
import 'package:weatherapp/views/other_infos.dart';
import 'utils/styles.dart';
import 'views/hourly_previsions.dart';
import 'views/previsions_week.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MaterialApp(
    title: 'WeathAir',
    home: MyApp(),
 ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {  
  ThemeData theme = Styles.lightTheme();

  // Defining variables for future usage
  String locationName = "Current Location"; // The variable that will change as the location changes
  late String lat; // Lattitude of the location
  late String long; // Longitude of the location

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WeathAir',
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title:  Text("WeathAir", style: TextStyle(
            color: Styles.color7
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search), 
              onPressed: () {
                showSearch(
                  context: context, 
                  delegate: CustomSearch());
              },
              )
          ],
        
        ),
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Container(
            color: Styles.sideBar,
            child: ListView(
              children: [                  
                const DrawerHeader(                
                  child: Text("Lieux Favoris",
                  style: TextStyle(fontSize: 20),
                  )
                  ),
                for(int i =0; i < 7; i++) //TODO : Include loop for saved locations in json or database maybe ?
                Container(
                  padding: const EdgeInsets.only(left:25, right: 25),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [                
                      Text("City name ", style: Styles.previsions,),
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
          body: SafeArea(
            child: SingleChildScrollView( // Making it scrollable (may be deleted later)
              child: Column(
                children: [
                  Container( // THIS IS THE CONTAINER FOR THE CURRENT WEATHER FOR THE CURRENT LOCATION AND HOURLY PREVISIONS
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    height: 170,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 197, 220, 255),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        Row(
                          //City name and temperature
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,                   
                          children: [
                            Column(                          
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(locationName, style: Styles.primaryText),
                                Text('Weather description here', style: Styles.secondaryText),
                              ],
                            ),
                            Text('XX°C', style: Styles.temperature),
                           ],
                        ),
                        const HourlyPrevisions(),
                      ],
                    ),
                  ),
                   const PrevisionsWeek(), /// Previsions for the current week
                   const SizedBox(
                      height: 420,
                      child: OtherInfos(),
                  ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

class CustomSearch extends SearchDelegate {

  List<String> cities = [ // This is for testing the searchbar
    'Paris',
    'Perpignan',
    'Evry-Courcouronnes',
    'Evreux',
    'Ivry-Sur-Seine',
    'Juvisy',
    'Villeneuve-Saint-Georges',
    'Vigneux-Sur-Seine',
    'Melun',
    'Montargis',
    'Villabé',
    'Villemonble',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query='';
        }, 
        icon: const Icon(Icons.clear)
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      }, 
      icon: const Icon(Icons.arrow_back),
      );
  }

  @override
  Widget buildResults(BuildContext context) {

    List<String>matchQuery=[];

    for(var city in cities){
      if(city.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(city);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
      return ListTile(title: Text(matchQuery[index]),
      );
    },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String>matchQuery=[];

    for(var city in cities){
      if(city.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(city);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
      return ListTile(title: Text(matchQuery[index]),
      );
    },
    );
  }
}