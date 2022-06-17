import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FieldDataWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  const FieldDataWidget ({
    Key key,
    @required this.controller,
    @required this.label,
    @required this.hint
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15, left: 15, right: 15),
      child: TextField(
        controller: controller,
        readOnly: true,
        autofocus: true,
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.orange, width: 2,)
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.orange, width: 1,)
          ),
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.black
          ),
          floatingLabelStyle: const TextStyle(
            color: Colors.orange
        ),
          hintStyle: const TextStyle(
              color: Colors.black
          ),
          hintText: hint
        ),
      ),
    );
  }
}
