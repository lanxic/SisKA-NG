import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputStringForm extends StatefulWidget {
  final inputController;
  final label;
  final isValidate;
  final readOnly;
  final isEnable;

  CustomInputStringForm({
    Key? key,
    this.label,
    @required this.inputController,
    @required this.isValidate,
    @required this.readOnly,
    this.isEnable,
  }) : super(key: key);

  @override
  _CustomInputStringFormState createState() => _CustomInputStringFormState();
}

class _CustomInputStringFormState extends State<CustomInputStringForm> {
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.isEnable,
      controller: widget.inputController,
      textInputAction: TextInputAction.next,
      readOnly: widget.readOnly,
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
