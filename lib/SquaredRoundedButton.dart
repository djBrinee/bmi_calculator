import 'package:flutter/material.dart';

class SquaredRoundedButton extends StatelessWidget {
  SquaredRoundedButton({super.key, required this.icon, required this.onPress});

  final IconData icon;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: Color(0XFF4C4F5E),
      onPressed: onPress,
    );
  }
}
