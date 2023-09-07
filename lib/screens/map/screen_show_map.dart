import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_demo/shared/constants.dart';

class ScreenShowMaps extends StatefulWidget {
  const ScreenShowMaps({super.key});

  @override
  State<ScreenShowMaps> createState() => _ScreenShowMapsState();
}

class _ScreenShowMapsState extends State<ScreenShowMaps> {
  late GoogleMapController mapController;
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Map<String, Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: kGooglePlex,
        onMapCreated: (controller) {
          _controller.complete(controller);
        },
        markers: _markers.values.toSet(),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(kLake));
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(
        markerId: MarkerId(id),
        position: location,
        infoWindow: const InfoWindow(
            title: 'Kochin Karnival',
            snippet: 'One of the wonderful location is this'));
    _markers[id] = marker;
  }
}
