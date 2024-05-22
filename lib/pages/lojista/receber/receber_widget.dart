import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'receber_model.dart';
export 'receber_model.dart';

class ReceberWidget extends StatefulWidget {
  const ReceberWidget({
    super.key,
    this.contaLojista,
    this.listatipovale,
  });

  final dynamic contaLojista;
  final List<String>? listatipovale;

  @override
  State<ReceberWidget> createState() => _ReceberWidgetState();
}

class _ReceberWidgetState extends State<ReceberWidget> {
  late ReceberModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceberModel());
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
            'Novo Pagamento',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 100.0,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (!_model.qrgerado)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50.0,
                            child: custom_widgets.MoedaBRField(
                              width: double.infinity,
                              height: 50.0,
                              bordercolor: FlutterFlowTheme.of(context).primary,
                              borderRadius: 12.0,
                              initialValue: '0,00',
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              if (!_model.qrgerado)
                                FlutterFlowRadioButton(
                                  options: widget.listatipovale!.toList(),
                                  onChanged: (val) => setState(() {}),
                                  controller:
                                      _model.radioButtonValueController ??=
                                          FormFieldController<String>(
                                              widget.listatipovale!.first),
                                  optionHeight: 32.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                  selectedTextStyle:
                                      FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: const Color(0xFF014E0E),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                          ),
                                  buttonPosition: RadioButtonPosition.left,
                                  direction: Axis.horizontal,
                                  radioButtonColor: const Color(0xFF165306),
                                  inactiveRadioButtonColor: const Color(0xFF38FF00),
                                  toggleable: false,
                                  horizontalAlignment: WrapAlignment.start,
                                  verticalAlignment: WrapCrossAlignment.start,
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (!_model.qrgerado)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: ((FFAppState().propPrice <= 0.0) &&
                                    (_model.radioButtonValue == null ||
                                        _model.radioButtonValue == ''))
                                ? null
                                : () async {
                                    setState(() {
                                      _model.qrgerado = true;
                                      _model.qrcode = functions.createqrcode(
                                          widget.contaLojista,
                                          FFAppState().propPrice,
                                          _model.radioButtonValue!,
                                          getJsonField(
                                            widget.contaLojista,
                                            r'''$.shop.fantasyName''',
                                          ).toString(),
                                          getJsonField(
                                            widget.contaLojista,
                                            r'''$.shop.cnpj''',
                                          ).toString());
                                    });
                                  },
                            text: 'Gerar QRCODE',
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
                              disabledColor: const Color(0xFF938E8E),
                              disabledTextColor: Colors.black,
                            ),
                          ),
                        ),
                      if (_model.qrgerado)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: BarcodeWidget(
                            data: _model.qrcode!,
                            barcode: Barcode.qrCode(),
                            width: double.infinity,
                            height: 200.0,
                            color: const Color(0xFF30552C),
                            backgroundColor: Colors.transparent,
                            errorBuilder: (context, error) => const SizedBox(
                              width: double.infinity,
                              height: 200.0,
                            ),
                            drawText: false,
                          ),
                        ),
                      if (_model.qrgerado)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('HomePageLojista');
                            },
                            text: 'Concluir pagamento',
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
      ),
    );
  }
}
