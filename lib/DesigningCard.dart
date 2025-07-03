import 'package:flutter/material.dart';
import 'Constant.dart';

class DesigningCard extends StatelessWidget {
  DesigningCard(this.cardIcon, this.cardName);

   final IconData cardIcon;
   final String cardName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardName,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
