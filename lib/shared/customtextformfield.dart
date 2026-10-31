import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hungry2/core/constants/app_colors.dart';

class Customtextformfield extends StatefulWidget {
  const Customtextformfield({
    super.key,
    required this.hint,
    required this.ispassword,
    required this.controller,
  });

  final String hint;
  final bool ispassword;
  final TextEditingController controller;

  @override
  State<Customtextformfield> createState() => _CustomtextformfieldState();
}

class _CustomtextformfieldState extends State<Customtextformfield> {
  late bool _obsecuretext;

  @override
  void initState() {
    _obsecuretext = widget.ispassword;
    super.initState();
  }

  void _togglepassword() {
    setState(() {
      _obsecuretext = !_obsecuretext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      cursorHeight: 18,
      validator: (v) {
        if (v == null || v.isEmpty) {
          return "Please fill the ${widget.hint}";
        }
        return null;
      },

      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.white, fontSize: 12, height: 1),
        suffixIcon: widget.ispassword
            ? GestureDetector(
                onTap: _togglepassword,
                child: Icon(
                  _obsecuretext ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                  color: AppColors.primaryColor,
                ),
              )
            : null,
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.white),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        fillColor: Colors.transparent,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      obscureText: _obsecuretext,
    );
  }
}
