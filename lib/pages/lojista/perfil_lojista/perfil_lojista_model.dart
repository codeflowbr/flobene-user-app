import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_lojista_widget.dart' show PerfilLojistaWidget;
import 'package:flutter/material.dart';

class PerfilLojistaModel extends FlutterFlowModel<PerfilLojistaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (excluirConta)] action in Container widget.
  ApiCallResponse? apiResult7kf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
