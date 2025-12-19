import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:nactar/Style/Colors.dart';
import 'package:nactar/Wized/Big_Button.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  String? address = "Fetching location...";

  Future<void> getLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        setState(() {
          address = "Location Permission Denied!";
        });
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
      );

      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude, position.longitude);

      Placemark place = placemarks[0];


      String? upazila =
      place.locality?.isNotEmpty == true ? place.locality : null;

      String? district = place.subAdministrativeArea?.isNotEmpty == true
          ? place.subAdministrativeArea
          : (place.administrativeArea?.isNotEmpty == true
          ? place.administrativeArea
          : null);

      String? division = place.administrativeArea?.isNotEmpty == true
          ? place.administrativeArea
          : null;

      String? country =
      place.country?.isNotEmpty == true ? place.country : "Unknown";

      /// CUSTOM DISPLAY → Upazila বাদ দিয়ে District + Division + Country
      if (district != null && division != null) {
        address = "$district, $division, $country";
      } else if (district != null) {
        address = "$district, $country";
      }
      else if (division != null) {
        address = "$division, $country";
      }
      else {

        address = "${position.latitude}, ${position.longitude}";
      }

      setState(() {});
    } catch (e) {
      setState(() {
        address = "Error: ${e.toString()}";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    print(address);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Current Location"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "Your Current Location",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/LocatonPage");
                  },
                  icon: Icon(Icons.add_location),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              address ?? "Fetching...",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.googlebouttonColors),
              onPressed: getLocation,
              child: const Text(
                "Refresh Location",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Spacer(),
            BigButton(
              context: context,
              ontab: () {
                Navigator.pushNamed(context, "/ButtomNavigatorBarpage",arguments:
                  address
                );
              },
              ButtonColor: Appcolors.Primarycolros,
              Buttontext: "Shoping",
            )
          ],
        ),
      ),
    );
  }
}
