import 'package:flutter/material.dart';

class NitoAppBar extends AppBar {
  NitoAppBar({
    super.key,
    String? titleText,
  }) : super(
          title: titleText != null ? Text(titleText) : null,
        );
}
