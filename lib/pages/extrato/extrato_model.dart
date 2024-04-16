import '/components/extract_tile/extract_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'extrato_widget.dart' show ExtratoWidget;
import 'package:flutter/material.dart';

class ExtratoModel extends FlutterFlowModel<ExtratoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ExtractTile component.
  late ExtractTileModel extractTileModel1;
  // Model for ExtractTile component.
  late ExtractTileModel extractTileModel2;

  @override
  void initState(BuildContext context) {
    extractTileModel1 = createModel(context, () => ExtractTileModel());
    extractTileModel2 = createModel(context, () => ExtractTileModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    extractTileModel1.dispose();
    extractTileModel2.dispose();
  }
}
