import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'extract_tile_model.dart';
export 'extract_tile_model.dart';

class ExtractTileWidget extends StatefulWidget {
  const ExtractTileWidget({
    super.key,
    required this.local,
    required this.valor,
    required this.hora,
    required this.tipoVale,
    required this.icone,
    required this.tipo,
  });

  final String? local;
  final String? valor;
  final String? hora;
  final String? tipoVale;
  final Widget? icone;
  final String? tipo;

  @override
  State<ExtractTileWidget> createState() => _ExtractTileWidgetState();
}

class _ExtractTileWidgetState extends State<ExtractTileWidget> {
  late ExtractTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtractTileModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 5.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                widget.icone!,
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.local,
                          'local',
                        ),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).blackOlive,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.valor,
                            'valor',
                          ),
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).error,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.tipo,
                    'tipo',
                  ),
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).blackOlive,
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.tipoVale,
                    'tipoVale',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).blackOlive,
                        letterSpacing: 0.0,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.hora,
                    'hora',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).blackOlive,
                        letterSpacing: 0.0,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
