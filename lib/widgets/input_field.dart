import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData icon;

  InputField({this.hint, this.icon, this.obscure});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black87,
            width: 0.5
          )
        ),

      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(
          color: Colors.black87
        ),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.black87,
          ),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20
          ),
          contentPadding: EdgeInsets.only(top: 30, right: 30, bottom: 30, left: 5)
        ),
      ),
    );
  }
}
