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
  String? fantasy,
  String? cnpjParam,
) {
// Obter a data atual
  DateTime now = DateTime.now();
  String formattedDate = now.toIso8601String();
  String cnpjMiddle = cnpjParam!.substring(3, cnpjParam.length - 3);

  // Adiciona a parte do meio entre ***
  String cnpj = "***$cnpjMiddle***";

  // Criar o objeto JSON
  Map<String, dynamic> jsonMap = {
    "sender": dadosLojista["id"],
    "value": valor,
    "type": tipoVale,
    "date": formattedDate,
    "fantasy": fantasy,
    "cnpj": cnpj
  };

  // Converter o mapa para uma string JSON
  String jsonString = jsonEncode(jsonMap);

  return jsonString;
}

String caughtJsonPath(
  String path,
  String jsonString,
) {
  Map<String, dynamic> qrData = jsonDecode(jsonString);
  return qrData[path].toString();
}

String? newCustomFunction2(String? dataString) {
  // Converter a string para um objeto DateTime
  DateTime data = DateTime.parse(dataString!);

  // Formatar a data no formato dd/mm/yyyy
  String dataFormatada = DateFormat('dd/MM/yyyy').format(data);

  return dataFormatada;
}

String stringToInt(String numeroString) {
  return numeroString;
}

double stringToDouble(String numeroString) {
  return double.parse(numeroString);
}

String? horaDate(String dataString) {
  if (dataString == null || dataString.length < 16) return null;

  // Extrair a hora e o minuto das posições conhecidas na string
  String hora = dataString.substring(11, 13);
  String minuto = dataString.substring(14, 16);

  // Retornar a hora e o minuto concatenados com ':' entre eles
  return '$hora:$minuto';
}

LatLng? stringParaLng(String latLng) {
  stringToLatLng(String latLngString) {
    // Remover espaços em branco, se houver
    latLngString = latLngString.trim();

    // Dividir a string por vírgula
    List<String> latLngList = latLngString.split(',');

    // Verificar se a lista contém exatamente dois elementos (latitude e longitude)
    if (latLngList.length != 2) {
      throw FormatException("A string fornecida não está no formato correto");
    }

    // Converter os elementos para double
    double latitude = double.parse(latLngList[0].trim());
    double longitude = double.parse(latLngList[1].trim());

    // Criar e retornar o objeto LatLng
    return LatLng(latitude, longitude);
  }
}

List<LatLng>? markers(List<MapStruct> maps) {
  if (maps == null) return null;
  final List<LatLng> result = [];
  for (final map in maps) {
    var latLngString = map.latLng;
    final latLng = latLngString.split(',');
    if (latLng.length != 2) continue;
    final latitude = double.tryParse(latLng[0]);
    final longitude = double.tryParse(latLng[1]);
    if (latitude == null || longitude == null) continue;
    result.add(LatLng(latitude, longitude));
  }
  return result.isEmpty ? null : result;
}

int? indexMarkerIdentifier(
  LatLng? centerMarkerCoordinate,
  List<LatLng>? listOfLocation,
) {
  // return index of argument 1 in argument 2
  if (centerMarkerCoordinate == null || listOfLocation == null) {
    return null;
  }
  for (int i = 0; i < listOfLocation.length; i++) {
    if (centerMarkerCoordinate.latitude == listOfLocation[i].latitude &&
        centerMarkerCoordinate.longitude == listOfLocation[i].longitude) {
      return i;
    }
  }
  return null;
}

List<MapStruct>? procurarPorLocais(
  String? benefit,
  List<MapStruct> maplist,
) {
  List<MapStruct> filteredShops = maplist.where((shop) {
    return shop.shop.beneficio.contains(benefit);
  }).toList();

  return filteredShops;
}

String? getDateNow() {
  // Define o formato desejado para a data
  DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

  // Obtém a data atual
  DateTime now = DateTime.now();

  // Formata a data
  return dateFormat.format(now);
}

String? removeNumericCaracteres(String cpfOrCnpj) {
  return cpfOrCnpj.replaceAll(RegExp(r'\D'), '');
}

int? sizeString(String texto) {
  return texto.length;
}

bool? validaremail(String email) {
  // validar se email é verdadeiro atraves da string
// Regular expression to validate email format
  final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  // Check if email matches the regular expression
  if (emailRegex.hasMatch(email)) {
    return true;
  } else {
    return false;
  }
}

bool listaCnaesValidar(
  List<String> listaCnaes,
  String cnaePrincipal,
) {
  List<String> listaAlimentacao = [
    "4639-7/01",
    "4711-3/01",
    "4711-3/02",
    "1013-9/01",
    "1091-1/00",
    "46.91-5/00",
    "4712-1/00",
    "4639-7-01",
    "4711-3-01",
    "4711-3-02",
    "1013-9-01",
    "1091-1-00",
    "46.91-5-00",
    "47.12-1/00",
    "46.39-7-01",
    "47.11-3-01",
    "47.11-3-02",
    "10.13-9-01",
    "10.91-1-00",
    "46.91-5-00",
    "47.12-1-00"
  ];

  // Lista de refeição
  List<String> listaRefeicao = [
    "5611-2/01",
    "5620-1/03",
    "5620-1/01",
    "5611-2/03",
    "4721-1/01",
    "5611-2/03",
    "5611-2/0",
    "5611-2-01",
    "5620-1-03",
    "5620-1-01",
    "5611-2-03",
    "4721-1-01",
    "5611-2-03",
    "5611-2-0",
    "56.11-2-01",
    "56.20-1-03",
    "56.20-1-01",
    "56.11-2-03",
    "47.21-1-01",
    "56.11-2-03",
    "56.11-2-0"
  ];

  List<String> listaCombinada = [...listaAlimentacao, ...listaRefeicao];

// Verifique se o cnaePrincipal está presente na lista combinada
  if (listaCombinada.contains(cnaePrincipal)) {
    return true;
  }

  // Verifique se qualquer item na listaCnaes está presente na lista combinada
  for (String cnae in listaCnaes) {
    if (listaCombinada.contains(cnae)) {
      return true;
    }
  }

  return false;
}

String createQrCodeCliente(String? clientId) {
  DateTime now = DateTime.now();
  String formattedDate = now.toIso8601String();

  // Criar o objeto JSON
  Map<String, dynamic> jsonMap = {
    "sender": clientId,
    "date": formattedDate,
  };

  // Converter o mapa para uma string JSON
  String jsonString = jsonEncode(jsonMap);

  return jsonString;
}
