import 'package:flutter/material.dart';

class CustomInputEmailForm extends StatefulWidget {
  var inputController;
  var label;
  var isValidate;

  CustomInputEmailForm({
    Key? key,
    @required this.inputController,
    @required this.label,
    @required this.isValidate,
  }) : super(key: key);

  @override
  _CustomInputEmailFormState createState() => _CustomInputEmailFormState();
}

class _CustomInputEmailFormState extends State<CustomInputEmailForm> {
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.inputController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
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
