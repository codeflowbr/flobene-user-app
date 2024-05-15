import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String? newCustomFunction(String texto) {
  return texto.replaceAll('-', '').replaceAll('/', '').replaceAll('.', '');
}

String valor00(String? valor) {
  // Tenta converter a string para um número
  double? valorDouble = double.tryParse(valor!);

  // Se a conversão falhar, retorna a string original
  if (valorDouble == null) {
    return valor;
  }

  // Formata o valor para BRL
  NumberFormat formatoMoeda =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2);
  return formatoMoeda.format(valorDouble);
}

String convertData(DateTime? datePickerDate) {
  DateFormat format = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
  return format.format(datePickerDate!);
}

String createqrcode(
  dynamic dadosLojista,
  double valor,
  String tipoVale,
) {
// Obter a data atual
  DateTime now = DateTime.now();
  String formattedDate = now.toIso8601String();

  // Criar o objeto JSON
  Map<String, dynamic> jsonMap = {
    "sender": dadosLojista["id"],
    "value": valor,
    "type": tipoVale,
    "date": formattedDate,
  };

  // Converter o mapa para uma string JSON
  String jsonString = jsonEncode(jsonMap);

  return jsonString;
}
