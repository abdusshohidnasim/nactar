import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocatonPage extends StatefulWidget {
  const LocatonPage({super.key});

  @override
  State<LocatonPage> createState() => _LocatonPageState();
}

class _LocatonPageState extends State<LocatonPage> {
  GoogleMapController? map;

  StreamSubscription<Position>? sub;

  LatLng? mySelf;

  final MarkerId markerID = const MarkerId("Naiem Hassan Naiem");


  @override
  void initState() {
    super.initState();
    initialLocation();
  }


  @override
  void dispose() {
    sub?.cancel(); //
    super.dispose();
  }

  // Location Parmition
  Future<void> initialLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Location Permission Missing")),
      );
      return;
    }

    // Location service enabled
    final enabled = await Geolocator.isLocationServiceEnabled();
    if (!enabled) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please Enable Location Service")),
      );
      return;
    }

    // Initial position
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    updatePosition(position);

    // Stream position update
    sub?.cancel();
    sub = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.best,
        distanceFilter: 5,
      ),
    ).listen((p) => updatePosition(p));
  }

  //  Update positon
  void updatePosition(Position p) {
    final here = LatLng(p.latitude, p.longitude);

    setState(() {
      mySelf = here;
    });

    animateTo(here);
  }
// cameara position

  Future<void> animateTo(LatLng target) async {
    if (map == null) return;
    await map!.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: target, zoom: 12),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    final start = mySelf ?? const LatLng(25.1860195, 89.8586045);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Location Page"),
      ),
      body:GoogleMap(

        onMapCreated: (controller) {
          map = controller;
        },
        initialCameraPosition: CameraPosition(
          target: start,
          zoom: 12,
        ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,


        markers: mySelf == null
            ? {}
            : {
          Marker(
            markerId: markerID,
            position: mySelf!,
            infoWindow:
            const InfoWindow(title: "Naiem Hassan Naiem"),
          ),
        },
      ),
    );
  }
}
