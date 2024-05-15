import '/flutter_flow/flutter_flow_util.dart';
import 'saque_widget.dart' show SaqueWidget;
import 'package:flutter/material.dart';

class SaqueModel extends FlutterFlowModel<SaqueWidget> {
  ///  Local state fields for this page.

  int? currency;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for valor widget.
  FocusNode? valorFocusNode;
  TextEditingController? valorTextController;
  String? Function(BuildContext, String?)? valorTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    valorFocusNode?.dispose();
    valorTextController?.dispose();
  }
}
