import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siskang/app/global/utils/constants.dart';

class CustomInputPasswdForm extends StatefulWidget {
  final inputController;
  final label;
  final isValidate;

  CustomInputPasswdForm({
    Key? key,
    @required this.inputController,
    @required this.label,
    @required this.isValidate,
  }) : super(key: key);

  @override
  _CustomInputPasswdFormState createState() => _CustomInputPasswdFormState();
}

class _CustomInputPasswdFormState extends State<CustomInputPasswdForm> {
  bool isError = false;
  bool _isHidePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.phone,
      obscureText: _isHidePassword,
      controller: widget.inputController,
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
        suffixIcon: GestureDetector(
          onTap: () => _togglePasswordVisibility(),
          child: Icon(
            _isHidePassword ? Icons.visibility_off : Icons.visibility,
            color: _isHidePassword ? Colors.grey : null,
            size: getProportionateScreenWidth(25),
          ),
        ),
      ),
    );
  }
}
