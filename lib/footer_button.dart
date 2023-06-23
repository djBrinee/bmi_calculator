import 'package:flutter/material.dart';
import 'package:pmi_calculator/constants.dart';
import 'package:pmi_calculator/result_parameters.dart';
import 'package:pmi_calculator/results.dart';

class footer_buttom extends StatefulWidget {
  footer_buttom({super.key, required this.result});
  String result;

  @override
  State<footer_buttom> createState() => _footer_buttomState();
}

class _footer_buttomState extends State<footer_buttom> {
  Color _color = kButtonContainerColor; // default

  void _handleHover(bool isTapped) {
    setState(() {
      _color = isTapped ? kButtonContainerColorHover : kButtonContainerColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Results.routeName,
            arguments: ResultArguments(
              widget.result,
            ));
      },
      onTapDown: (_) {
        _handleHover(true);
      },
      onTapUp: (_) {
        _handleHover(false);
      },
      child: Container(
        color: _color,
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            "Calculate",
            style: kCalculateButtonStyle,
          ),
        ),
      ),
    );
  }
}
