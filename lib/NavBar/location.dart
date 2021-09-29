import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:project/mainDirectory/homePage/location.api.dart';
import 'package:project/mainDirectory/tools/borderradius.dart';
import 'package:provider/provider.dart';

class LocationClass extends StatefulWidget {
  const LocationClass({Key key}) : super(key: key);

  @override
  _LocationClassState createState() => _LocationClassState();
}

class _LocationClassState extends State<LocationClass> {
  TextEditingController _locationController = TextEditingController();

  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: SearchInjector(
        child: Scrollbar(
          controller: _scrollController,
          child: Consumer<LocationApi>(
            builder: (_, api, child) => SingleChildScrollView(
              child: Column(
                children: [
                  new Container(
                    decoration: new BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xff59a5da),
                            Color(0xff60af6c),
                          ]),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: new TextField(
                      controller: _locationController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 13),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: InputBorder.none,
                        hintText: 'Search for a location',
                        hintStyle: new TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                        ),
                      ),
                      onSubmitted: api.handleSearch,
                    ),
                  ),
                  new Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: GradientBorder.uniform(
                        width: 3.0,
                        gradient: LinearGradient(colors: <Color>[
                          Color(0xff59a5da),
                          Color(0xff60af6c)
                        ], stops: [
                          0.3,
                          0.5
                        ])),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: StreamBuilder<List<Place>>(
                        stream: api.controllerOut,
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return Center(child: Text('No adress found'));
                          }
                          final data = snapshot.data;
                          return Scrollbar(
                              controller: _scrollController,
                              child: SingleChildScrollView(
                                  child: Column(
                                children: List.generate(data.length, (index) {
                                  final place = data[index];
                                  return ListTile(
                                      title:
                                          Text('${place.name} ${place.street}'),
                                      subtitle: Text('${place.country}'),
                                      onTap: () async{
                                        _locationController.text =
                                        '${place.name}, ${place.street}, ${place.country}';
                                        List<Location> location = (await locationFromAddress(_locationController.text));
                                        print(location);

                                        setState(() {
                                          Place(
                                            lat: location.first.latitude,
                                            lon: location.first.longitude,
                                            address: _locationController.text,
                                          );
                                        });
                                      });
                                }),
                              )));
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchInjector extends StatelessWidget {
  final Widget child;

  const SearchInjector({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocationApi(),
      child: child,
    );
  }
}
