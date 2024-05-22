import '/components/extract_tile/extract_tile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'extract_data_tile_model.dart';
export 'extract_data_tile_model.dart';

class ExtractDataTileWidget extends StatefulWidget {
  const ExtractDataTileWidget({super.key});

  @override
  State<ExtractDataTileWidget> createState() => _ExtractDataTileWidgetState();
}

class _ExtractDataTileWidgetState extends State<ExtractDataTileWidget> {
  late ExtractDataTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtractDataTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          child: Text(
            'Terça, 10/10/2023',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).secondary,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 200.0,
                child: wrapWithModel(
                  model: _model.extractTileModel,
                  updateCallback: () => setState(() {}),
                  child: const ExtractTileWidget(
                    local: 'Irani',
                    valor: 'R\$ 100,00',
                    hora: '19:25',
                    tipoVale: 'Alimentação',
                    icone: Icon(
                      Icons.money,
                      color: Color(0xFFFF0000),
                      size: 40.0,
                    ),
                    tipo: 'Compra',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
