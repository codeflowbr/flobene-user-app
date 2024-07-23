import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_page_widget.dart' show PerfilPageWidget;
import 'package:flutter/material.dart';

class PerfilPageModel extends FlutterFlowModel<PerfilPageWidget> {
  ///  Local state fields for this page.

  String nome = 'nome';

  String empresa = 'empresa';

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
