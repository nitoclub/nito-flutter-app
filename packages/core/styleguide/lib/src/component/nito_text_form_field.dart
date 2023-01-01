import 'package:flutter/material.dart';

class NitoTextFormField extends TextFormField {
  NitoTextFormField({
    super.key,
    required BuildContext context,
    TextEditingController? controller,
    String? labelText,
  }) : super(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2.0,
              ),
            ),
            labelStyle: TextStyle(
              fontSize: 16,
              color: Theme.of(context).hintColor,
            ),
            labelText: labelText,
            floatingLabelStyle: const TextStyle(fontSize: 20),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 1.0,
              ),
            ),
          ),
        );
}
