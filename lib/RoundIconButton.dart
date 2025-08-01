import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
   final ShapeBorder shape;
  final VoidCallback press;
  RoundIconButton({required this.icon, required this.shape, required this.press});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: press,
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      shape: shape,
      // RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 56.0,height: 56.0),
    );
  }
}