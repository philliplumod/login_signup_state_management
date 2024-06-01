import 'package:flutter/material.dart';

class CustomTextPasswordField extends StatefulWidget {
  final TextEditingController controller;
  const CustomTextPasswordField({Key? key, required this.controller})
      : super(key: key);

  @override
  State<CustomTextPasswordField> createState() =>
      _CustomTextPasswordFieldState();
}

class _CustomTextPasswordFieldState extends State<CustomTextPasswordField> {
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        obscureText: passwordVisible,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: 'Enter your password',
          labelText: 'Password',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(
                () {
                  passwordVisible = !passwordVisible;
                },
              );
            },
          ),
          alignLabelWithHint: false,
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
