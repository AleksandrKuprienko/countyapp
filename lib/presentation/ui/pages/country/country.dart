import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart";

import 'package:countyapp/data/entities/country_response.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({@required this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(country.name),
      ),
      child: FlutterMap(
        options: MapOptions(
          center: LatLng(country.latlng[0], country.latlng[1]),
          zoom: 5.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 10.0,
                height: 10.0,
                point: LatLng(country.latlng[0], country.latlng[1]),
                builder: (ctx) => Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
