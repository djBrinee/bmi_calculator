import 'package:flutter/material.dart';
import 'package:pmi_calculator/card_container.dart';
import 'package:pmi_calculator/constants.dart';
import 'package:pmi_calculator/result_parameters.dart';

class Results extends StatelessWidget {
  Results({super.key});

  static const routeName = 'results';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultArguments;
    
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
                    )
                  ]),
                  onPress: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
