import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:siskang/app/global/utils/constants.dart';

class CustomInputPasswdNumberForm extends StatefulWidget {
  final inputPWController;
  final inputRPWController;
  final isValidate;

  CustomInputPasswdNumberForm({
    Key? key,
    @required this.inputPWController,
    @required this.inputRPWController,
    @required this.isValidate,
  }) : super(key: key);

  @override
  _CustomInputPasswdNumberFormState createState() =>
      _CustomInputPasswdNumberFormState();
}

class _CustomInputPasswdNumberFormState
    extends State<CustomInputPasswdNumberForm> {
  bool isError = false;
  bool _isHidePassword = true;
  bool _isHideRePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _isHidePassword = !_isHidePassword;
    });
  }

  void _toggleRePasswordVisibility() {
    setState(() {
      _isHideRePassword = !_isHideRePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.phone,
          obscureText: _isHidePassword,
          controller: widget.inputPWController,
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
            labelText: "Password (min: 6 digit)*",
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
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextFormField(
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.phone,
          obscureText: _isHideRePassword,
          controller: widget.inputRPWController,
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
            isDense: true,
            labelText: "Confirm Password (min: 6 digit)*",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            errorStyle: TextStyle(height: 0),
            suffixIcon: GestureDetector(
              onTap: () => _toggleRePasswordVisibility(),
              child: Icon(
                _isHideRePassword ? Icons.visibility_off : Icons.visibility,
                color: _isHideRePassword ? Colors.grey : null,
                size: getProportionateScreenWidth(25),
              ),
            ),
          ),
        )
      ],
    );
  }
}
