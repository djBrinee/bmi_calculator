import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final Color activeCardColor = Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardContainer(
                    color: activeCardColor,
                    icon: iconContent(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                  CardContainer(
                    color: activeCardColor,
                    icon: iconContent(
                      text: "FEMALE",
                      icon: FontAwesomeIcons.venus,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Expanded(
                //   //   child: CardContainer(
                //   //   color: activeCardColor,
                //   // )
                // ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CardContainer(
                  //   color: activeCardColor,
                  // ),
                  // CardContainer(
                  //   color: activeCardColor,
                  // )
                ],
              ),
            ),
            Container(
              color: Color(0xffEB1555),
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}

class iconContent extends StatelessWidget {
  iconContent({super.key, required this.text, required this.icon});

  String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff8d8e91),
          ),
        )
      ],
    );
  }
}

class CardContainer extends StatelessWidget {
  CardContainer({
    super.key,
    required this.color,
    required this.icon,
  });

  Color color;
  Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.0)),
      child: icon,
    );
  }
}
