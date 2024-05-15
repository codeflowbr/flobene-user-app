import '/flutter_flow/flutter_flow_util.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  Local state fields for this page.

  String? valor;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
