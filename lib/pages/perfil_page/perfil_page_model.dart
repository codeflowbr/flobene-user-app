import '/flutter_flow/flutter_flow_util.dart';
import 'perfil_page_widget.dart' show PerfilPageWidget;
import 'package:flutter/material.dart';

class PerfilPageModel extends FlutterFlowModel<PerfilPageWidget> {
  ///  Local state fields for this page.

  String nome = 'Patrick';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
