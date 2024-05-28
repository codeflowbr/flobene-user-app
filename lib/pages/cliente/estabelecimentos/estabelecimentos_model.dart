import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'estabelecimentos_widget.dart' show EstabelecimentosWidget;
import 'package:flutter/material.dart';

class EstabelecimentosModel extends FlutterFlowModel<EstabelecimentosWidget> {
  ///  Local state fields for this page.

  List<MapStruct> listaLocais = [];
  void addToListaLocais(MapStruct item) => listaLocais.add(item);
  void removeFromListaLocais(MapStruct item) => listaLocais.remove(item);
  void removeAtIndexFromListaLocais(int index) => listaLocais.removeAt(index);
  void insertAtIndexInListaLocais(int index, MapStruct item) =>
      listaLocais.insert(index, item);
  void updateListaLocaisAtIndex(int index, Function(MapStruct) updateFn) =>
      listaLocais[index] = updateFn(listaLocais[index]);

  bool bottomsheet = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (buscarLocais)] action in Estabelecimentos widget.
  ApiCallResponse? apiResultwmp;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (buscarLocais)] action in DropDown widget.
  ApiCallResponse? apiResultehe;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
