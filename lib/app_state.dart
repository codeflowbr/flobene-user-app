import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }

  double _propPriceSaque = 0.0;
  double get propPriceSaque => _propPriceSaque;
  set propPriceSaque(double value) {
    _propPriceSaque = value;
  }

  List<GoogleMapDataStruct> _GoogleMapData = [];
  List<GoogleMapDataStruct> get GoogleMapData => _GoogleMapData;
  set GoogleMapData(List<GoogleMapDataStruct> value) {
    _GoogleMapData = value;
  }

  void addToGoogleMapData(GoogleMapDataStruct value) {
    _GoogleMapData.add(value);
  }

  void removeFromGoogleMapData(GoogleMapDataStruct value) {
    _GoogleMapData.remove(value);
  }

  void removeAtIndexFromGoogleMapData(int index) {
    _GoogleMapData.removeAt(index);
  }

  void updateGoogleMapDataAtIndex(
    int index,
    GoogleMapDataStruct Function(GoogleMapDataStruct) updateFn,
  ) {
    _GoogleMapData[index] = updateFn(_GoogleMapData[index]);
  }

  void insertAtIndexInGoogleMapData(int index, GoogleMapDataStruct value) {
    _GoogleMapData.insert(index, value);
  }

  List<LatLng> _listaLocais = [];
  List<LatLng> get listaLocais => _listaLocais;
  set listaLocais(List<LatLng> value) {
    _listaLocais = value;
  }

  void addToListaLocais(LatLng value) {
    _listaLocais.add(value);
  }

  void removeFromListaLocais(LatLng value) {
    _listaLocais.remove(value);
  }

  void removeAtIndexFromListaLocais(int index) {
    _listaLocais.removeAt(index);
  }

  void updateListaLocaisAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    _listaLocais[index] = updateFn(_listaLocais[index]);
  }

  void insertAtIndexInListaLocais(int index, LatLng value) {
    _listaLocais.insert(index, value);
  }
}
