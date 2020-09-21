import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlutterMap(
                options: MapOptions(
                  center: LatLng(12.968311, 77.749575),
                  zoom: 13.0,
                ),
                layers: [
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 80.0,
                        height: 80.0,
                        point: LatLng(12.968311, 77.749575),
                        builder: (ctx) =>
                            Container(
                              child: Icon(Icons.local_pharmacy),
                            ),
                      ),
                    ],
                  ),
                ],
                children: <Widget>[
              TileLayerWidget(options: TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']
            )),
              MarkerLayerWidget(options: MarkerLayerOptions(
            markers: [
            Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(18.485870, 73.905853),
            builder: (ctx) =>
                Container(
                  child: Icon(Icons.local_hospital),
            ),
            ),
            ],
            )
            )
            ,
            ]
            ,
            ),
          ),
        ),
      ),
    );
  }
}
