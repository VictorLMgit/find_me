import 'package:find_me/utils/app_routes.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text("Meus Lugares"),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
              },
              icon: Icon(Icons.add)),
        )
      ],
    );

    // ignore: prefer_const_constructors
    final body = Center(
      // ignore: prefer_const_constructors
      child: CircularProgressIndicator(),
    );

    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
