import 'package:find_me/models/places.dart';
import 'package:flutter/cupertino.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items => [..._items];

  int get itemsCount => _items.length;

  Place getItemById(int index) => _items[index];
}
