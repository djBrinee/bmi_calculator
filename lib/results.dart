import 'package:flutter/material.dart';
import 'package:pmi_calculator/card_container.dart';
import 'package:pmi_calculator/constants.dart';

class Results extends StatelessWidget {
  Results({super.key, required this.result});
  String result;

  @override
  Widget build(BuildContext context) {
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
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            result,
                            style: kNumberTextStyle,
                          )
                        ],
                      ),
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
