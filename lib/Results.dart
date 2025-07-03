import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  const Results({
    super.key,
    required this.weightMeasuresCompliment,
    required this.suggestion,
    required this.yourWeightDouble,
  });

  final String weightMeasuresCompliment;
  final String yourWeightDouble;

  final String suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              textAlign: TextAlign.left,
              style: kYourResultSytle,
            ),
          ),
          Expanded(
            //  flex: 5,
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(weightMeasuresCompliment, style: kResultTextStyle),
                  Text(yourWeightDouble.toString(), style: kBMITextStyle),
                  Text(
                    suggestion,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            nameOfButton: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
