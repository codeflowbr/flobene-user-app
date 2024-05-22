import '/components/extract_tile/extract_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'extract_data_tile_widget.dart' show ExtractDataTileWidget;
import 'package:flutter/material.dart';

class ExtractDataTileModel extends FlutterFlowModel<ExtractDataTileWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ExtractTile component.
  late ExtractTileModel extractTileModel;

  @override
  void initState(BuildContext context) {
    extractTileModel = createModel(context, () => ExtractTileModel());
  }

  @override
  void dispose() {
    extractTileModel.dispose();
  }
}
