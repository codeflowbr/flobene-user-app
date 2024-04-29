import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'card_saldo_model.dart';
export 'card_saldo_model.dart';

class CardSaldoWidget extends StatefulWidget {
  const CardSaldoWidget({
    super.key,
    String? nome,
    String? valor,
    this.icon,
  })  : nome = nome ?? 'refeição',
        valor = valor ?? '100,00';

  final String nome;
  final String valor;
  final Widget? icon;

  @override
  State<CardSaldoWidget> createState() => _CardSaldoWidgetState();
}

class _CardSaldoWidgetState extends State<CardSaldoWidget> {
  late CardSaldoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardSaldoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.0,
      height: 88.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primary,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(5.0),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: const Color(0xFF989696),
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: widget.icon!,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.nome,
                    'refeição',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Text(
                  'R\$ ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Roboto',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.valor,
                  '100,00',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
