// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

class MoedaBRFieldSaque extends StatefulWidget {
  const MoedaBRFieldSaque({
    Key? key,
    this.width,
    this.height,
    required this.bordercolor,
    required this.borderRadius,
    required this.initialValue,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color bordercolor;
  final double borderRadius;
  final String initialValue;

  @override
  _PriceFieldState createState() => _PriceFieldState();
}

class _PriceFieldState extends State<MoedaBRFieldSaque> {
  late TextEditingController _priceEditingController;
  final currencyFormat = NumberFormat("#,##0.00", "pt_BR");

  @override
  void initState() {
    super.initState();
    _priceEditingController = TextEditingController();
    _priceEditingController.text = widget.initialValue;
  }

  @override
  void dispose() {
    _priceEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: TextField(
        controller: _priceEditingController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          TextInputFormatter.withFunction((oldValue, newValue) {
            final text = newValue.text;
            final selection = newValue.selection;
            if (text.isEmpty) {
              return TextEditingValue(text: '', selection: selection);
            } else if (text.length == 1) {
              final number = int.tryParse(text);
              if (number == null) {
                return oldValue;
              } else {
                final newText = '0.${number.toString()}';
                return TextEditingValue(
                  text: newText,
                  selection: TextSelection.collapsed(offset: newText.length),
                );
              }
            } else {
              final price = double.parse(text.replaceAll('.', '')) / 100;
              final newText = currencyFormat.format(price);
              FFAppState().update(() {
                FFAppState().propPriceSaque = price;
              });
              final newSelectionIndex =
                  newText.length - (text.length - selection.end);
              return TextEditingValue(
                text: newText,
                selection: TextSelection.collapsed(offset: newSelectionIndex),
              );
            }
          })
        ],
        onChanged: (value) {},
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(1000, 66, 194, 29)),
        decoration: InputDecoration(
          hintText: 'Valor',
          hintStyle: TextStyle(
            color: Color.fromARGB(1000, 66, 194, 29),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color.fromARGB(1000, 66, 194, 29),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: widget.bordercolor),
          ),
          prefix: Text(
            'R\$ ',
            style: TextStyle(
              color: Color.fromARGB(1000, 66, 194, 29),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
