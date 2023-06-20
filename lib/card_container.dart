import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardContainer extends StatelessWidget {
  CardContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.onPress,
  });

  Color color;
  Widget icon;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 200,
        width: 170,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10.0)),
        child: icon,
      ),
      onTap: onPress,
    );
  }
}
