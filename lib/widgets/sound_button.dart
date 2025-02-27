import 'package:flutter/material.dart';

TextButton buildDrumBox({
  required String soundName,
  required Color colorName,
  required VoidCallback playSound,
}) {
  return TextButton(
    style: TextButton.styleFrom(
      padding: EdgeInsets.all(8),
      elevation: 6,
      shadowColor: Color.fromRGBO(0, 0, 0, 0.5),
    ),
    onPressed: () {
      playSound();
    },
    child: Container(
      color: colorName,
    ),
  );
}
