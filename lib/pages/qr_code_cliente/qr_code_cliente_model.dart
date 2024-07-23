import '/flutter_flow/flutter_flow_util.dart';
import 'qr_code_cliente_widget.dart' show QrCodeClienteWidget;
import 'package:flutter/material.dart';

class QrCodeClienteModel extends FlutterFlowModel<QrCodeClienteWidget> {
  ///  Local state fields for this page.

  String? qrcode;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
