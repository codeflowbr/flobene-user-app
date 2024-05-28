import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'estabelecimentos_model.dart';
export 'estabelecimentos_model.dart';

class EstabelecimentosWidget extends StatefulWidget {
  const EstabelecimentosWidget({super.key});

  @override
  State<EstabelecimentosWidget> createState() => _EstabelecimentosWidgetState();
}

class _EstabelecimentosWidgetState extends State<EstabelecimentosWidget> {
  late EstabelecimentosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstabelecimentosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
      _model.apiResultwmp = await BuscarLocaisCall.call(
        jwt: currentAuthenticationToken,
        cidade: currentUserData?.cidade,
      );
      setState(() {
        _model.listaLocais = ((_model.apiResultwmp?.jsonBody ?? '')
                .toList()
                .map<MapStruct?>(MapStruct.maybeFromMap)
                .toList() as Iterable<MapStruct?>)
            .withoutNulls
            .toList()
            .cast<MapStruct>();
      });
    });

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(26.0, 0.0, 26.0, 26.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Text(
                        'Estabelecimentos',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Roboto',
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController ??=
                        FormFieldController<String>(
                      _model.dropDownValue ??= '',
                    ),
                    options: List<String>.from(['ALIMENTAÇÃO', 'REFEIÇÃO']),
                    optionLabels: const ['Alimentação', 'Refeição'],
                    onChanged: (val) async {
                      setState(() => _model.dropDownValue = val);
                      _model.apiResultehe = await BuscarLocaisCall.call(
                        jwt: currentAuthenticationToken,
                        cidade: currentUserData?.cidade,
                      );
                      if ((_model.apiResultehe?.succeeded ?? true)) {
                        setState(() {
                          _model.listaLocais = functions
                              .procurarPorLocais(
                                  _model.dropDownValue,
                                  ((_model.apiResultehe?.jsonBody ?? '')
                                          .toList()
                                          .map<MapStruct?>(
                                              MapStruct.maybeFromMap)
                                          .toList() as Iterable<MapStruct?>)
                                      .withoutNulls
                                      .toList())!
                              .toList()
                              .cast<MapStruct>();
                          _model.bottomsheet = false;
                        });
                      }

                      setState(() {});
                    },
                    width: double.infinity,
                    height: 56.0,
                    textStyle: FlutterFlowTheme.of(context).labelLarge.override(
                          fontFamily: 'Roboto',
                          letterSpacing: 0.0,
                        ),
                    hintText: 'Selecione',
                    icon: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderWidth: 2.0,
                    borderRadius: 8.0,
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                    hidesUnderline: true,
                    isOverButton: true,
                    isSearchable: false,
                    isMultiSelect: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.6,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Stack(
                      children: [
                        FlutterFlowGoogleMap(
                          controller: _model.googleMapsController,
                          onCameraIdle: (latLng) =>
                              _model.googleMapsCenter = latLng,
                          initialLocation: _model.googleMapsCenter ??=
                              currentUserLocationValue!,
                          markers:
                              (functions.markers(_model.listaLocais.toList()) ??
                                      [])
                                  .map(
                                    (marker) => FlutterFlowMarker(
                                      marker.serialize(),
                                      marker,
                                      () async {
                                        setState(() {
                                          _model.bottomsheet = true;
                                        });
                                      },
                                    ),
                                  )
                                  .toList(),
                          markerColor: GoogleMarkerColor.red,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 14.5,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: true,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                        if (_model.bottomsheet == true)
                          PointerInterceptor(
                            intercepting: isWeb,
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 250.0, 0.0, 0.0),
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 10.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Visibility(
                                  visible: _model.bottomsheet,
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 140),
                                    curve: Curves.easeIn,
                                    width: 376.0,
                                    height: 350.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
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
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 16.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.bottomsheet)
                                                      Text(
                                                        valueOrDefault<String>(
                                                          _model
                                                              .listaLocais[
                                                                  valueOrDefault<
                                                                      int>(
                                                            functions.indexMarkerIdentifier(
                                                                _model
                                                                    .googleMapsCenter,
                                                                functions
                                                                    .markers(_model
                                                                        .listaLocais
                                                                        .toList())
                                                                    ?.toList()),
                                                            0,
                                                          )]
                                                              .title,
                                                          'Nome',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 20.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.bottomsheet)
                                                      Text(
                                                        valueOrDefault<String>(
                                                          'Rua: ${valueOrDefault<String>(
                                                            _model
                                                                .listaLocais[
                                                                    valueOrDefault<
                                                                        int>(
                                                              functions.indexMarkerIdentifier(
                                                                  _model
                                                                      .googleMapsCenter,
                                                                  functions
                                                                      .markers(_model
                                                                          .listaLocais
                                                                          .toList())
                                                                      ?.toList()),
                                                              0,
                                                            )]
                                                                .shop
                                                                .address
                                                                .street,
                                                            'Rua',
                                                          )}',
                                                          'Rua',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.bottomsheet)
                                                      Text(
                                                        valueOrDefault<String>(
                                                          'Número: ${valueOrDefault<String>(
                                                            _model
                                                                .listaLocais[
                                                                    valueOrDefault<
                                                                        int>(
                                                              functions.indexMarkerIdentifier(
                                                                  _model
                                                                      .googleMapsCenter,
                                                                  functions
                                                                      .markers(_model
                                                                          .listaLocais
                                                                          .toList())
                                                                      ?.toList()),
                                                              0,
                                                            )]
                                                                .shop
                                                                .address
                                                                .number,
                                                            'Número',
                                                          )}',
                                                          'Número',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.bottomsheet)
                                                      Text(
                                                        valueOrDefault<String>(
                                                          'Bairro: ${valueOrDefault<String>(
                                                            _model
                                                                .listaLocais[
                                                                    valueOrDefault<
                                                                        int>(
                                                              functions.indexMarkerIdentifier(
                                                                  _model
                                                                      .googleMapsCenter,
                                                                  functions
                                                                      .markers(_model
                                                                          .listaLocais
                                                                          .toList())
                                                                      ?.toList()),
                                                              0,
                                                            )]
                                                                .shop
                                                                .address
                                                                .neighborhood,
                                                            'Bairro',
                                                          )}',
                                                          'Bairro',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.bottomsheet)
                                                      Text(
                                                        valueOrDefault<String>(
                                                          'Cidade: ${valueOrDefault<String>(
                                                            _model
                                                                .listaLocais[
                                                                    valueOrDefault<
                                                                        int>(
                                                              functions.indexMarkerIdentifier(
                                                                  _model
                                                                      .googleMapsCenter,
                                                                  functions
                                                                      .markers(_model
                                                                          .listaLocais
                                                                          .toList())
                                                                      ?.toList()),
                                                              0,
                                                            )]
                                                                .shop
                                                                .address
                                                                .city,
                                                            'Cidade',
                                                          )}',
                                                          'Cidade',
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 3.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.bottomsheet)
                                                      Text(
                                                        'Telefone:',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                    Container(
                                                      width: 200.0,
                                                      height: 15.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                      child: ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          if (_model
                                                              .bottomsheet)
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                _model
                                                                    .listaLocais[
                                                                        valueOrDefault<
                                                                            int>(
                                                                  functions.indexMarkerIdentifier(
                                                                      _model
                                                                          .googleMapsCenter,
                                                                      functions
                                                                          .markers(_model
                                                                              .listaLocais
                                                                              .toList())
                                                                          ?.toList()),
                                                                  0,
                                                                )]
                                                                    .shop
                                                                    .phone,
                                                                'phone',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 32.0, 0.0, 13.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                setState(() {
                                                  _model.bottomsheet = false;
                                                });
                                              },
                                              text: 'Confirmar',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
      ),
    );
  }
}
