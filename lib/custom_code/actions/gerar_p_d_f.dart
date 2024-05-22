// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ui';

import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart' as mt;

Future<void> gerarPDF(
  String? modelo,
  String? cnpjDestinatario,
  String? nomeDestinatario,
  String? data,
  String? nomeOrigem,
  String? cpfOrigem,
  String? valor,
) async {
  final pdf = pw.Document();
  final imageUrl =
      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/flowbene-konlcf/assets/q5rtv8f3v9ot/ext_png.png';
  final response = await http.get(Uri.parse(imageUrl));
  if (response.statusCode == 200) {
    final imageBytes = response.bodyBytes;
    pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a6,
      build: (pw.Context context) {
        return pw.Container(
            width: PdfPageFormat.a6.width,
            height: PdfPageFormat.a6.height,
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  pw.Image(
                    pw.MemoryImage(imageBytes),
                    width: 40,
                    height: 40,
                  ),
                  pw.SizedBox(height: 8),
                  pw.Text("COMPROVANTE DE \nTRANSFERÊNCIA",
                      style: pw.TextStyle(
                          fontWeight: pw.FontWeight.bold, fontSize: 10)),
                  pw.SizedBox(height: 4),
                  pw.Text(data!,
                      style: pw.TextStyle(
                          color: PdfColor.fromInt(0xFF858585),
                          fontWeight: pw.FontWeight.bold,
                          fontSize: 10)),
                  pw.SizedBox(height: 12),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text("Valor",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text(valor!,
                          style: pw.TextStyle(
                              color: PdfColor.fromInt(0xFF858585),
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10)),
                    ],
                  ),
                  pw.SizedBox(height: 5),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text("Modelo",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text(modelo!,
                          style: pw.TextStyle(
                              color: PdfColor.fromInt(0xFF858585),
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10)),
                    ],
                  ),
                  pw.SizedBox(height: 15),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      //adicionar icone depois
                      pw.Text("Destino",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColor.fromInt(0xFF858585), // Cor da linha
                    thickness: 1, // Espessura da linha
                  ),
                  pw.SizedBox(height: 5),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text("Nome",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text(nomeDestinatario!,
                          style: pw.TextStyle(
                              color: PdfColor.fromInt(0xFF858585),
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10)),
                    ],
                  ),
                  pw.SizedBox(height: 5),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text("CNPJ",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text(cnpjDestinatario!,
                          style: pw.TextStyle(
                              color: PdfColor.fromInt(0xFF858585),
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10)),
                    ],
                  ),
                  pw.SizedBox(height: 15),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      //adicionar icone depois
                      pw.Text("Origem",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColor.fromInt(0xFF858585), // Cor da linha
                    thickness: 1, // Espessura da linha
                  ),
                  pw.SizedBox(height: 5),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text("Nome",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text(nomeOrigem!,
                          style: pw.TextStyle(
                              color: PdfColor.fromInt(0xFF858585),
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10)),
                    ],
                  ),
                  pw.SizedBox(height: 5),
                  pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text("CPF",
                          style: pw.TextStyle(
                              fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text(cpfOrigem!,
                          style: pw.TextStyle(
                              color: PdfColor.fromInt(0xFF858585),
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10)),
                    ],
                  ),
                ]));
      },
    ));

    final pdfSaved = await pdf.save();

    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => pdfSaved);
  }
}
