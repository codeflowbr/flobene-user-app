import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'senha_saque_widget.dart' show SenhaSaqueWidget;
import 'package:flutter/material.dart';

class SenhaSaqueModel extends FlutterFlowModel<SenhaSaqueWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (withdraw)] action in Button widget.
  ApiCallResponse? apiResultjbz;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
  }
}
