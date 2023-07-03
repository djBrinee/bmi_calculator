import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pmi_calculator/SquaredRoundedButton.dart';
import 'package:pmi_calculator/card_container.dart';
import 'package:pmi_calculator/constants.dart';
import 'package:pmi_calculator/footer_button.dart';
import 'package:pmi_calculator/iconContent.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  var selectedGenter;
  int height = 120;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardContainer(
                    color: selectedGenter == Gender.male ? kactiveCardColor : kinactiveCardColor,
                    icon: iconContent(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                    onPress: () {
                      selectedGenter = Gender.male;
                      setState(() {});
                    },
                  ),
                  CardContainer(
                    color: selectedGenter == Gender.female ? kactiveCardColor : kinactiveCardColor,
                    icon: iconContent(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                    onPress: () {
                      selectedGenter = Gender.female;
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: CardContainer(
                  color: kactiveCardColor,
                  icon: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Text(
                      "HEIGHT",
                      style: kLabelTextStule,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(height.toString(), style: kNumberTextStyle),
                        const Text('cm', style: kTextStyle)
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: kButtonContainerColor,
                          thumbColor: kButtonContainerColor,
                          activeTrackColor: Colors.white,
                          inactiveTickMarkColor: const Color(0XFF952552)),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          onChanged: (newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ]),
                  onPress: () {},
                )),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardContainer(
                    color: kactiveCardColor,
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('WEIGHT', style: kTextStyle),
                        Text(weight.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SquaredRoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (weight > 38) {
                                    weight--;
                                  } else {
                                    (_showAlertDialog(
                                        "Yoy can't type this weight", 'Unavailable weight'));
                                  }
                                });
                              },
                            ),
                            SquaredRoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  if (weight < 300) {
                                    weight++;
                                  } else {
                                    (_showAlertDialog(
                                        "Yoy can't type this weight", 'Unavailable weight'));
                                  }
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                  CardContainer(
                    color: kactiveCardColor,
                    icon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE', style: kTextStyle),
                        Text(age.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SquaredRoundedButton(
                              icon: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (age > 18) {
                                    age--;
                                  } else {
                                    (_showAlertDialog(
                                        "Yoy can't type this age", 'Unavailable age'));
                                  }
                                });
                              },
                            ),
                            SquaredRoundedButton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  if (age < 120) {
                                    age++;
                                  } else {
                                    (_showAlertDialog(
                                        "Yoy can't type this age", 'Unavailable age'));
                                  }
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                    onPress: () {},
                  ),
                ],
              ),
            ),
            footer_buttom(result: (weight / (height / 100 * height / 100)).toStringAsFixed(2)),
          ],
        ));
  }

  Future<void> _showAlertDialog(String description, String title) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: kDialogTitleTextStyle),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  description,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  )),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {});
              },
            ),
          ],
        );
      },
    );
  }
}
