import 'package:flutter/material.dart';

class CustomInputEmailForm extends StatefulWidget {
  final inputController;
  final label;
  final isValidate;
  final readOnly;
  final isEnable;

  CustomInputEmailForm({
    Key? key,
    required this.inputController,
    required this.label,
    required this.isValidate,
    required this.readOnly,
    required this.isEnable,
  }) : super(key: key);

  @override
  _CustomInputEmailFormState createState() => _CustomInputEmailFormState();
}

class _CustomInputEmailFormState extends State<CustomInputEmailForm> {
  bool isError = false;

  @override
  Widget build(BuildContext context) {
    return !widget.isEnable
        ? Container(
            color: Colors.grey[200],
            child: TextFormField(
              enabled: widget.isEnable,
              controller: widget.inputController,
              keyboardType: TextInputType.emailAddress,
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
            ),
          )
        : TextFormField(
            enabled: widget.isEnable,
            controller: widget.inputController,
            keyboardType: TextInputType.emailAddress,
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
