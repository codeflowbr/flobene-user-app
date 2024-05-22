import '/components/senha_saque/senha_saque_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'saque_model.dart';
export 'saque_model.dart';

class SaqueWidget extends StatefulWidget {
  const SaqueWidget({
    super.key,
    required this.contaLojista,
  });

  final dynamic contaLojista;

  @override
  State<SaqueWidget> createState() => _SaqueWidgetState();
}

class _SaqueWidgetState extends State<SaqueWidget> {
  late SaqueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaqueModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: const Text(
            'Saque',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 50.0,
                              child: custom_widgets.MoedaBRFieldSaque(
                                width: double.infinity,
                                height: 50.0,
                                bordercolor:
                                    FlutterFlowTheme.of(context).primary,
                                borderRadius: 12.0,
                                initialValue: '0,00',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                setState(() {
                                  _model.password = true;
                                });
                              },
                              text: 'Realizar Saque',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (_model.password)
              wrapWithModel(
                model: _model.senhaSaqueModel,
                updateCallback: () => setState(() {}),
                child: SenhaSaqueWidget(
                  json: widget.contaLojista!.toString(),
                  valor: FFAppState().propPriceSaque,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
