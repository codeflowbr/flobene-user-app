import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'senha_receber_lojista_widget.dart' show SenhaReceberLojistaWidget;
import 'package:flutter/material.dart';

class SenhaReceberLojistaModel
    extends FlutterFlowModel<SenhaReceberLojistaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (vendaLojista)] action in Button widget.
  ApiCallResponse? apiResultdcq;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
