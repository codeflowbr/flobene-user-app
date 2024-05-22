import '/components/senha_saque/senha_saque_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'saque_widget.dart' show SaqueWidget;
import 'package:flutter/material.dart';

class SaqueModel extends FlutterFlowModel<SaqueWidget> {
  ///  Local state fields for this page.

  int? currency;

  bool password = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for senhaSaque component.
  late SenhaSaqueModel senhaSaqueModel;

  @override
  void initState(BuildContext context) {
    senhaSaqueModel = createModel(context, () => SenhaSaqueModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    senhaSaqueModel.dispose();
  }
}
