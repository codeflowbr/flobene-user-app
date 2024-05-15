import '/flutter_flow/flutter_flow_util.dart';
import 'details_v_r_widget.dart' show DetailsVRWidget;
import 'package:flutter/material.dart';

class DetailsVRModel extends FlutterFlowModel<DetailsVRWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
