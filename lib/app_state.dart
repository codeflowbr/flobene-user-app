import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _idCliente = prefs.getString('ff_idCliente') ?? _idCliente;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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
    GoogleMapData.add(value);
  }

  void removeFromGoogleMapData(GoogleMapDataStruct value) {
    GoogleMapData.remove(value);
  }

  void removeAtIndexFromGoogleMapData(int index) {
    GoogleMapData.removeAt(index);
  }

  void updateGoogleMapDataAtIndex(
    int index,
    GoogleMapDataStruct Function(GoogleMapDataStruct) updateFn,
  ) {
    GoogleMapData[index] = updateFn(_GoogleMapData[index]);
  }

  void insertAtIndexInGoogleMapData(int index, GoogleMapDataStruct value) {
    GoogleMapData.insert(index, value);
  }

  List<LatLng> _listaLocais = [];
  List<LatLng> get listaLocais => _listaLocais;
  set listaLocais(List<LatLng> value) {
    _listaLocais = value;
  }

  void addToListaLocais(LatLng value) {
    listaLocais.add(value);
  }

  void removeFromListaLocais(LatLng value) {
    listaLocais.remove(value);
  }

  void removeAtIndexFromListaLocais(int index) {
    listaLocais.removeAt(index);
  }

  void updateListaLocaisAtIndex(
    int index,
    LatLng Function(LatLng) updateFn,
  ) {
    listaLocais[index] = updateFn(_listaLocais[index]);
  }

  void insertAtIndexInListaLocais(int index, LatLng value) {
    listaLocais.insert(index, value);
  }

  String _idCliente = '';
  String get idCliente => _idCliente;
  set idCliente(String value) {
    _idCliente = value;
    prefs.setString('ff_idCliente', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
