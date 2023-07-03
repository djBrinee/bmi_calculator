import 'package:flutter/material.dart';
import 'package:pmi_calculator/card_container.dart';
import 'package:pmi_calculator/constants.dart';
import 'package:pmi_calculator/overweight_calc.dart';
import 'package:pmi_calculator/result_parameters.dart';
import 'package:flutter/painting.dart';

class Results extends StatelessWidget {
  Results({super.key});

  static const routeName = 'results';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultArguments;
    double bmi_result = double.parse(args.result);
    Overweight_Calculator oCalculator = new Overweight_Calculator();
    String weightStatus = oCalculator.calculateOverWeight(bmi_result);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: CardContainer(
                  color: kactiveCardColor,
                  icon: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Wrap(children: [
                      Center(
                        child: Text(
                          'Your BMI result, according to data submitted is:',
                          style: kTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          args.result,
                          style: kHeightStyle,
                        )
                      ],
                    ),
                  ]),
                  onPress: () {},
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kactiveCardColor),
                      child: Center(
                        child: Text(
                          weightStatus,
                          style: oCalculator.weightMessageStyle(weightStatus),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
