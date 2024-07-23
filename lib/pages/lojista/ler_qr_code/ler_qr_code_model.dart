import '/components/senha_receber_lojista/senha_receber_lojista_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ler_qr_code_widget.dart' show LerQrCodeWidget;
import 'package:flutter/material.dart';

class LerQrCodeModel extends FlutterFlowModel<LerQrCodeWidget> {
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
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Model for senhaReceberLojista component.
  late SenhaReceberLojistaModel senhaReceberLojistaModel;

  @override
  void initState(BuildContext context) {
    senhaReceberLojistaModel =
        createModel(context, () => SenhaReceberLojistaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    senhaReceberLojistaModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
