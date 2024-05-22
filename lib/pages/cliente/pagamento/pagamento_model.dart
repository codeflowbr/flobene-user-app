import '/components/senha/senha_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  Local state fields for this page.

  String? valor;

  String? destinatario;

  String? data;

  String? modelo;

  String? idLoja;

  String? dataddmmyyyy;

  bool passwordActive = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for senha component.
  late SenhaModel senhaModel;

  @override
  void initState(BuildContext context) {
    senhaModel = createModel(context, () => SenhaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    senhaModel.dispose();
  }
}
