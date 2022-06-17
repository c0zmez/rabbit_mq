import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const TextFieldWidget({
    Key key,
    @required this.controller,
    @required this.label
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: TextField(
        enabled: true,
        controller: controller,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.orange, width: 2,)
            ),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.orange, width: 1,)
            ),
            labelStyle: const TextStyle(
                color: Colors.black
            ),
            floatingLabelStyle: const TextStyle(
                color: Colors.orange
            ),
            hintStyle: const TextStyle(
                color: Colors.black
            ),
          labelText: label,
        )
      ),
    );
  }
}
