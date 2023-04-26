import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_favourite_places/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(
    String title,
    File image,
  ) {
    final newPlace = Place(title: title, image: image);
    state = [...state, newPlace];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
