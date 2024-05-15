import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastro_lojista_widget.dart' show CadastroLojistaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroLojistaModel extends FlutterFlowModel<CadastroLojistaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  final cnpjMask = MaskTextInputFormatter(mask: '##.###.###/####-##');
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  String? _cnpjTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (cnpj)] action in cnpj widget.
  ApiCallResponse? apiResult121;
  // State field(s) for razaoSocial widget.
  FocusNode? razaoSocialFocusNode;
  TextEditingController? razaoSocialTextController;
  String? Function(BuildContext, String?)? razaoSocialTextControllerValidator;
  String? _razaoSocialTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an age for the patient.';
    }

    return null;
  }

  // State field(s) for nomeFantasia widget.
  FocusNode? nomeFantasiaFocusNode;
  TextEditingController? nomeFantasiaTextController;
  String? Function(BuildContext, String?)? nomeFantasiaTextControllerValidator;
  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  String? _telefoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the date of birth of the patient.';
    }

    return null;
  }

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '##.###-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for numeroCasa widget.
  FocusNode? numeroCasaFocusNode;
  TextEditingController? numeroCasaTextController;
  String? Function(BuildContext, String?)? numeroCasaTextControllerValidator;
  // State field(s) for Estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoTextController;
  String? Function(BuildContext, String?)? estadoTextControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for Bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for rua widget.
  FocusNode? ruaFocusNode;
  TextEditingController? ruaTextController;
  String? Function(BuildContext, String?)? ruaTextControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // State field(s) for nomeDono widget.
  FocusNode? nomeDonoFocusNode;
  TextEditingController? nomeDonoTextController;
  String? Function(BuildContext, String?)? nomeDonoTextControllerValidator;
  // State field(s) for emailDono widget.
  FocusNode? emailDonoFocusNode;
  TextEditingController? emailDonoTextController;
  String? Function(BuildContext, String?)? emailDonoTextControllerValidator;
  // State field(s) for telefoneDono widget.
  FocusNode? telefoneDonoFocusNode;
  TextEditingController? telefoneDonoTextController;
  final telefoneDonoMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? telefoneDonoTextControllerValidator;
  // State field(s) for cpfDono widget.
  FocusNode? cpfDonoFocusNode;
  TextEditingController? cpfDonoTextController;
  final cpfDonoMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? cpfDonoTextControllerValidator;
  // State field(s) for dataNascimento widget.
  FocusNode? dataNascimentoFocusNode;
  TextEditingController? dataNascimentoTextController;
  String? Function(BuildContext, String?)?
      dataNascimentoTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for logi widget.
  FocusNode? logiFocusNode1;
  TextEditingController? logiTextController1;
  String? Function(BuildContext, String?)? logiTextController1Validator;
  // State field(s) for logi widget.
  FocusNode? logiFocusNode2;
  TextEditingController? logiTextController2;
  late bool logiVisibility;
  String? Function(BuildContext, String?)? logiTextController2Validator;
  // State field(s) for pix widget.
  FocusNode? pixFocusNode;
  TextEditingController? pixTextController;
  String? Function(BuildContext, String?)? pixTextControllerValidator;
  // State field(s) for senhaTransacao widget.
  TextEditingController? senhaTransacao;
  String? Function(BuildContext, String?)? senhaTransacaoValidator;
  // Stores action output result for [Backend Call - API (cadastroLojista)] action in Button widget.
  ApiCallResponse? apiResultm09;

  @override
  void initState(BuildContext context) {
    cnpjTextControllerValidator = _cnpjTextControllerValidator;
    razaoSocialTextControllerValidator = _razaoSocialTextControllerValidator;
    telefoneTextControllerValidator = _telefoneTextControllerValidator;
    logiVisibility = false;
    senhaTransacao = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    razaoSocialFocusNode?.dispose();
    razaoSocialTextController?.dispose();

    nomeFantasiaFocusNode?.dispose();
    nomeFantasiaTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    numeroCasaFocusNode?.dispose();
    numeroCasaTextController?.dispose();

    estadoFocusNode?.dispose();
    estadoTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    ruaFocusNode?.dispose();
    ruaTextController?.dispose();

    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    nomeDonoFocusNode?.dispose();
    nomeDonoTextController?.dispose();

    emailDonoFocusNode?.dispose();
    emailDonoTextController?.dispose();

    telefoneDonoFocusNode?.dispose();
    telefoneDonoTextController?.dispose();

    cpfDonoFocusNode?.dispose();
    cpfDonoTextController?.dispose();

    dataNascimentoFocusNode?.dispose();
    dataNascimentoTextController?.dispose();

    logiFocusNode1?.dispose();
    logiTextController1?.dispose();

    logiFocusNode2?.dispose();
    logiTextController2?.dispose();

    pixFocusNode?.dispose();
    pixTextController?.dispose();

    senhaTransacao?.dispose();
  }
}
