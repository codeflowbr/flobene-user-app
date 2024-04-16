import '/components/card_saldo/card_saldo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String nome = 'Patrick';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CardSaldo component.
  late CardSaldoModel cardSaldoModel1;
  // Model for CardSaldo component.
  late CardSaldoModel cardSaldoModel2;
  var linkPagamento = '';
  // State field(s) for Carousel widget.
  CarouselController? carouselController;

  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {
    cardSaldoModel1 = createModel(context, () => CardSaldoModel());
    cardSaldoModel2 = createModel(context, () => CardSaldoModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    cardSaldoModel1.dispose();
    cardSaldoModel2.dispose();
  }
}
