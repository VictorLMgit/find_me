import 'package:find_me/screens/place_form_screen.dart';
import 'package:find_me/screens/places_list_screens.dart';
import 'package:find_me/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'find_me',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity 
      ),
      debugShowCheckedModeBanner: false,
      home: PlacesListScreen(),
      routes: {
        AppRoutes.PLACE_FORM: (context) => PlaceFormScreen()
      },
    );
  }
}
