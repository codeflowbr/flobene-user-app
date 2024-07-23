import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_page_lojista_widget.dart' show HomePageLojistaWidget;
import 'package:flutter/material.dart';

class HomePageLojistaModel extends FlutterFlowModel<HomePageLojistaWidget> {
  ///  Local state fields for this page.

  String nome = '\nnome';

  String valorLojista = 'R\$ 0,00';

  dynamic json;

  List<dynamic> extratoJson = [];
  void addToExtratoJson(dynamic item) => extratoJson.add(item);
  void removeFromExtratoJson(dynamic item) => extratoJson.remove(item);
  void removeAtIndexFromExtratoJson(int index) => extratoJson.removeAt(index);
  void insertAtIndexInExtratoJson(int index, dynamic item) =>
      extratoJson.insert(index, item);
  void updateExtratoJsonAtIndex(int index, Function(dynamic) updateFn) =>
      extratoJson[index] = updateFn(extratoJson[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (buscarExtratosPorAccountId)] action in HomePageLojista widget.
  ApiCallResponse? apiExtrato;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (buscarAccountId)] action in HomePageLojista widget.
  ApiCallResponse? apiResult4oe;
  var linkPagamento = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
