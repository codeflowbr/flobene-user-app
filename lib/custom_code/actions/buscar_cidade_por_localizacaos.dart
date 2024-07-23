// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

List<double> buscarCidadePorLocalizacaos(LatLng? currentDeviceLocation) {
  if (currentDeviceLocation?.latitude == 0) {
    return [-24.9637481, -53.553562];
  }

  final lat = currentDeviceLocation!.latitude;
  final lng = currentDeviceLocation!.longitude;

  List<double> lista = [lat, lng];

  return lista;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
