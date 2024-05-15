import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_senha_widget.dart' show AlterarSenhaWidget;
import 'package:flutter/material.dart';

class AlterarSenhaModel extends FlutterFlowModel<AlterarSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for senha1 widget.
  FocusNode? senha1FocusNode;
  TextEditingController? senha1TextController;
  late bool senha1Visibility;
  String? Function(BuildContext, String?)? senha1TextControllerValidator;
  // State field(s) for senha widget.
  FocusNode? senhaFocusNode;
  TextEditingController? senhaTextController;
  late bool senhaVisibility;
  String? Function(BuildContext, String?)? senhaTextControllerValidator;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (alterar senha)] action in Button widget.
  ApiCallResponse? apiResult6i2;

  @override
  void initState(BuildContext context) {
    senha1Visibility = false;
    senhaVisibility = false;
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    senha1FocusNode?.dispose();
    senha1TextController?.dispose();

    senhaFocusNode?.dispose();
    senhaTextController?.dispose();

    pinCodeController?.dispose();
  }
}
