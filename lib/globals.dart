import 'package:flutter/material.dart';

// in ms used to animate the transition between screens
int speedAnim = 1000; // in ms

void moveToAnotherScreen(
    BuildContext context, FocusNode node, String pageName) {
  if (node.hasFocus) {
    node.unfocus();
    // node.dispose();
    Navigator.pushNamed(context, pageName);
  }
}
