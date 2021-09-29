import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class LocationApi extends ChangeNotifier {
  List<Place> places = [];

  final _controller = StreamController<List<Place>>.broadcast();
  var addressController = TextEditingController();

  final CollectionReference markersCollection = FirebaseFirestore.instance.collection('markers');

  Future registerMarker ({
    double lat,
    double lon
  }) async {
    return await markersCollection.add({
      'lat' : lat,
      'lon': lon,
    });
  }


  Stream<List<Place>> get controllerOut =>
      _controller.stream.asBroadcastStream();

  StreamSink<List<Place>> get controllerIn => _controller.sink;

  addPlace(Place place) {
    places.add(place);
    controllerIn.add(places);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }

  handleSearch(String query) async {

    List<Location> locations = await locationFromAddress(query);
    if (query.length > 3) {
      try {
        locations.forEach((location) async {
          List<Placemark> placeMark = await placemarkFromCoordinates(
              location.latitude, location.longitude);
          placeMark.forEach((placeMark) {
            addPlace(Place(
                name: placeMark.name,
                street:placeMark.street,
                localite: placeMark.locality,
                country: placeMark.country,
                ));
          });
        });
      } on Exception catch (e) {
        print(e.toString());
      }
    }
  }
}

class Place {
  final String name;
  final String street;
  final String localite;
  final String country;
  final double lat;
  final double lon;
  final String address;

  Place(
      {this.name,
        this.address,
      this.street,
      this.localite,
      this.country,
      this.lat,
      this.lon});
}


