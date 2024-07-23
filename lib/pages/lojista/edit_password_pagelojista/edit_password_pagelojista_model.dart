import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_password_pagelojista_widget.dart'
    show EditPasswordPagelojistaWidget;
import 'package:flutter/material.dart';

class EditPasswordPagelojistaModel
    extends FlutterFlowModel<EditPasswordPagelojistaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for senhaLogin widget.
  FocusNode? senhaLoginFocusNode;
  TextEditingController? senhaLoginTextController;
  String? Function(BuildContext, String?)? senhaLoginTextControllerValidator;
  // State field(s) for NovaSenha widget.
  TextEditingController? novaSenha;
  String? Function(BuildContext, String?)? novaSenhaValidator;
  // State field(s) for Confirmacao widget.
  TextEditingController? confirmacao;
  String? Function(BuildContext, String?)? confirmacaoValidator;
  // Stores action output result for [Backend Call - API (trocarSenha)] action in Button widget.
  ApiCallResponse? apiResultdcq;

  @override
  void initState(BuildContext context) {
    novaSenha = TextEditingController();
    confirmacao = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    senhaLoginFocusNode?.dispose();
    senhaLoginTextController?.dispose();

    novaSenha?.dispose();
    confirmacao?.dispose();
  }
}
