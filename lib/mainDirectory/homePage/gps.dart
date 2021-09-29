import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BodyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BodyClassState();
  }
}

class BodyClassState extends State {
  Set<Marker>  _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId('id-1'),
            position: LatLng(41.3275, 19.8187),
        ),

      );
      _markers.add(
        Marker(
          markerId: MarkerId('id-2'),
          position: LatLng(48.8566, 2.3522),
        ),

      );
      _markers.add(
        Marker(
          markerId: MarkerId('id-3'),
          position: LatLng(51.5074, 0.1278),
        ),

      );
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        // new Padding(
        //   padding: const EdgeInsets.all(20.8),
        // ),
        new Container(
          margin: const EdgeInsets.all(10.0),
          width: double.infinity,
          height: 400.0,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: new GoogleMap(
              markers: _markers,
              cameraTargetBounds: CameraTargetBounds.unbounded,
              tiltGesturesEnabled: true,
              scrollGesturesEnabled: true,
              gestureRecognizers:
              <Factory<OneSequenceGestureRecognizer>>[
                new Factory<OneSequenceGestureRecognizer>(
                      () => new EagerGestureRecognizer(),
                ),
              ].toSet(),
              onMapCreated: _onMapCreated,
              myLocationButtonEnabled: true,
              initialCameraPosition: CameraPosition(
            target: LatLng(0, 0),
            zoom: 2,
          )),
        ),
      ],
    );
  }
}
