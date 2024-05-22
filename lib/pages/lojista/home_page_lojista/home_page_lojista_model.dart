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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (buscarAccountId)] action in HomePageLojista widget.
  ApiCallResponse? apiResult4oe;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
