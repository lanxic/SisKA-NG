import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputNumberForm extends StatefulWidget {
  var inputController;
  var label;
  var isEnable;
  var isValidate;

  CustomInputNumberForm({
    Key? key,
    @required this.inputController,
    @required this.label,
    @required this.isEnable,
    @required this.isValidate,
  }) : super(key: key);

  @override
  _CustomInputNumberFormState createState() => _CustomInputNumberFormState();
}

class _CustomInputNumberFormState extends State<CustomInputNumberForm> {
  bool isError = false;
  int initValue = 0;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      controller: widget.inputController,
      enabled: widget.isEnable,
      onChanged: (value) {
        if (value.isNotEmpty) {
          setState(() {
            isError = true;
          });
        }
        return null;
      },
      validator: null,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10.0),
        labelText: widget.label,
        errorStyle: TextStyle(height: 0),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
