import 'package:flutter/material.dart';
import 'Constant.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.nameOfButton , required this.onTap});

  final String nameOfButton;
  final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20.0),
        color: Color(0xFFEB1555),
        width: double.infinity,
        height: kContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            nameOfButton,
            style:kBottonContainerHeight,
          ),
        ),

      ),
    );
  }
}


