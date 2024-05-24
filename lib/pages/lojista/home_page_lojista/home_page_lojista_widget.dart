import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page_lojista_model.dart';
export 'home_page_lojista_model.dart';

class HomePageLojistaWidget extends StatefulWidget {
  const HomePageLojistaWidget({super.key});

  @override
  State<HomePageLojistaWidget> createState() => _HomePageLojistaWidgetState();
}

class _HomePageLojistaWidgetState extends State<HomePageLojistaWidget> {
  late HomePageLojistaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageLojistaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
      _model.apiExtrato = await BuscarExtratosPorAccountIdCall.call(
        jwt: currentAuthenticationToken,
        accountId: currentUserUid,
      );
      if ((_model.apiExtrato?.succeeded ?? true)) {
        setState(() {
          _model.extratoJson =
              (_model.apiExtrato?.jsonBody ?? '').toList().cast<dynamic>();
        });
      }
      _model.instantTimer = InstantTimer.periodic(
        duration: const Duration(milliseconds: 10000),
        callback: (timer) async {
          _model.apiResult4oe = await BuscarAccountIdCall.call(
            jwt: currentAuthenticationToken,
            accountId: currentUserData?.uid,
          );
          if ((_model.apiResult4oe?.succeeded ?? true)) {
            setState(() {
              _model.nome = getJsonField(
                (_model.apiResult4oe?.jsonBody ?? ''),
                r'''$.shop.fantasyName''',
              ).toString().toString();
              _model.json = (_model.apiResult4oe?.jsonBody ?? '');
              _model.valorLojista = functions.valor00(getJsonField(
                (_model.apiResult4oe?.jsonBody ?? ''),
                r'''$.wallet.balanceShop''',
              ).toString().toString());
            });
          }
        },
        startImmediately: true,
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 162.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.93,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Olá, ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: _model.nome,
                                      style: const TextStyle(),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 45.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 116.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF92FA66),
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
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Saldo disponível',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 22.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        _model.valorLojista,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Roboto',
                                              fontSize: 30.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 30.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Receber',
                                    queryParameters: {
                                      'contaLojista': serializeParam(
                                        _model.json,
                                        ParamType.JSON,
                                      ),
                                      'listatipovale': serializeParam(
                                        (getJsonField(
                                          _model.json,
                                          r'''$.shop.beneficio''',
                                          true,
                                        ) as List)
                                            .map<String>((s) => s.toString())
                                            .toList(),
                                        ParamType.String,
                                        true,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF8BF56C),
                                    borderRadius: BorderRadius.circular(6.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.qr_code_scanner_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 35.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Receber',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Saque',
                                    queryParameters: {
                                      'contaLojista': serializeParam(
                                        _model.json,
                                        ParamType.JSON,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.06,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF8BF56C),
                                    borderRadius: BorderRadius.circular(6.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.moneyBillWaveAlt,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 35.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Saque',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 26.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 30.0),
                                  child: Builder(
                                    builder: (context) {
                                      final extrato =
                                          _model.extratoJson.toList();
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: extrato.length,
                                        itemBuilder: (context, extratoIndex) {
                                          final extratoItem =
                                              extrato[extratoIndex];
                                          return SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    extratoItem,
                                                    r'''$.dataFormatada''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final tileExtract =
                                                        getJsonField(
                                                      extratoItem,
                                                      r'''$.extractDTO''',
                                                    ).toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          tileExtract.length,
                                                      itemBuilder: (context,
                                                          tileExtractIndex) {
                                                        final tileExtractItem =
                                                            tileExtract[
                                                                tileExtractIndex];
                                                        return Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 100.0,
                                                            height: 60.0,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (valueOrDefault<
                                                                        bool>(
                                                                      getJsonField(
                                                                        tileExtractItem,
                                                                        r'''$.cashout''',
                                                                      ),
                                                                      true,
                                                                    ))
                                                                      const Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .trending_down,
                                                                          color:
                                                                              Color(0xFFFF0005),
                                                                          size:
                                                                              40.0,
                                                                        ),
                                                                      ),
                                                                    if (!valueOrDefault<
                                                                        bool>(
                                                                      getJsonField(
                                                                        tileExtractItem,
                                                                        r'''$.cashout''',
                                                                      ),
                                                                      true,
                                                                    ))
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .trending_up,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              40.0,
                                                                        ),
                                                                      ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            !getJsonField(
                                                                              tileExtractItem,
                                                                              r'''$.cashout''',
                                                                            )
                                                                                ? getJsonField(
                                                                                    tileExtractItem,
                                                                                    r'''$.senderName''',
                                                                                  ).toString()
                                                                                : 'Saque',
                                                                            'teste',
                                                                          ),
                                                                          style:
                                                                              const TextStyle(
                                                                            color:
                                                                                Color(0xFF616060),
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          functions
                                                                              .valor00(getJsonField(
                                                                            tileExtractItem,
                                                                            r'''$.value''',
                                                                          ).toString()),
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: valueOrDefault<Color>(
                                                                                  getJsonField(
                                                                                    tileExtractItem,
                                                                                    r'''$.cashout''',
                                                                                  )
                                                                                      ? const Color(0xFFFF0000)
                                                                                      : FlutterFlowTheme.of(context).primary,
                                                                                  FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Text(
                                                                      () {
                                                                        if (getJsonField(
                                                                          tileExtractItem,
                                                                          r'''$.deposit''',
                                                                        )) {
                                                                          return 'Depósito';
                                                                        } else if (getJsonField(
                                                                          tileExtractItem,
                                                                          r'''$.cashout''',
                                                                        )) {
                                                                          return 'Saque';
                                                                        } else {
                                                                          return 'Venda';
                                                                        }
                                                                      }(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                const Color(0xFF616060),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      !getJsonField(
                                                                        tileExtractItem,
                                                                        r'''$.cashout''',
                                                                      )
                                                                          ? getJsonField(
                                                                              tileExtractItem,
                                                                              r'''$.type''',
                                                                            ).toString()
                                                                          : 'Saque',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                const Color(0xFF616060),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        functions
                                                                            .horaDate(getJsonField(
                                                                          tileExtractItem,
                                                                          r'''$.date''',
                                                                        ).toString()),
                                                                        '00:00',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                const Color(0xFF616060),
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
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
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Icon(
                              Icons.home,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                          ),
                          Text(
                            'Inicio',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            'PerfilLojista',
                            queryParameters: {
                              'nome': serializeParam(
                                _model.nome,
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Icon(
                                Icons.person,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              'Perfil',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
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
          ],
        ),
      ),
    );
  }
}
