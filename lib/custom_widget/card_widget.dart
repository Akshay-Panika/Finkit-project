import 'package:flutter/material.dart';

Widget cardWidget({
  required Widget child,
  Color cardColor = Colors.white,
  double elevation = 0.0,
  double left = 0.0,
  double right = 0.0,
  double top = 0.0,
  double bottom = 0.0,
  ShapeBorder shape = const RoundedRectangleBorder(),
  VoidCallback? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Card(
      color: cardColor,
      shape:OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 0.5)),
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.only(left: left, right: right, top: top, bottom: bottom),
        child: child,
      ),
    ),
  );
}
