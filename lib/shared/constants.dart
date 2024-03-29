import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final appBar = AppBar(
  title: Text('Map Applications'),
  centerTitle: true,
);

const LATLONG = LatLng(9.986003, 76.265637);
const CameraPosition kGooglePlex = CameraPosition(
  target: LatLng(37.42796133580664, -122.085749655962),
  zoom: 14.4746,
);
const CameraPosition kLake = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(37.43296265331129, -122.08832357078792),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414);
