import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'senha_widget.dart' show SenhaWidget;
import 'package:flutter/material.dart';

class SenhaModel extends FlutterFlowModel<SenhaWidget> {
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
