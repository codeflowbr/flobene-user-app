import '/flutter_flow/flutter_flow_util.dart';
import 'comprovante_widget.dart' show ComprovanteWidget;
import 'package:flutter/material.dart';

class ComprovanteModel extends FlutterFlowModel<ComprovanteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
