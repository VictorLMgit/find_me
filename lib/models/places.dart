import 'dart:io';

class PlaceLocation {
  final double lat;
  final double lng;
  String? address;

  PlaceLocation({required this.lat, required this.lng, this.address});
}

class Place {
  final String id;
  final String title;
  final PlaceLocation? location;
  final File image;

  Place({
    required this.id,
    required this.title,
    required this.location,
    required this.image,
  });
}
