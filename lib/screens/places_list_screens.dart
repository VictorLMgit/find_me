import 'package:find_me/providers/great_places.dart';
import 'package:find_me/utils/app_routes.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final body = Consumer<GreatPlaces>(
      child: Center(
        child: Text("Nenhum local marcado"),
        ),
      builder: (ctx, greatPlaces, ch) => greatPlaces.itemsCount == 0 ? ch as Widget : ListView.builder(
        itemCount: greatPlaces.itemsCount ,
        itemBuilder: ((context, index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: FileImage(greatPlaces.getItemById(index).image),
            ),
            title: Text(greatPlaces.getItemById(index).title),
            onTap: (){},
          )
        ),
      ),

    );

    return Scaffold(
      appBar: appBar,
      body: body,
    );
  }
}
