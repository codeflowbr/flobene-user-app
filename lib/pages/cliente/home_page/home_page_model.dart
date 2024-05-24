import '/backend/api_requests/api_calls.dart';
import '/components/senha_reset/senha_reset_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String nome = '\nnome';

  String valorali = '0,00';

  String valorRef = '0,00';

  bool passwordActive = false;

  int? walletId;

  String? cpf;

  List<dynamic> extratoJson = [];
  void addToExtratoJson(dynamic item) => extratoJson.add(item);
  void removeFromExtratoJson(dynamic item) => extratoJson.remove(item);
  void removeAtIndexFromExtratoJson(int index) => extratoJson.removeAt(index);
  void insertAtIndexInExtratoJson(int index, dynamic item) =>
      extratoJson.insert(index, item);
  void updateExtratoJsonAtIndex(int index, Function(dynamic) updateFn) =>
      extratoJson[index] = updateFn(extratoJson[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (buscarExtratosPorAccountId)] action in HomePage widget.
  ApiCallResponse? apiExtrato;
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (buscarAccountId)] action in HomePage widget.
  ApiCallResponse? apiResult4oe;
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  var linkPagamento = '';
  // Model for senhaReset component.
  late SenhaResetModel senhaResetModel;

  @override
  void initState(BuildContext context) {
    senhaResetModel = createModel(context, () => SenhaResetModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
    senhaResetModel.dispose();
  }
}
