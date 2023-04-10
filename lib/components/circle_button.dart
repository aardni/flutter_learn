import 'package:flutter/material.dart';
import "../features/size_config.dart";

class CircleButton extends StatelessWidget {
  CircleButton(this.icon, this.text, {super.key});

  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: getProportionateScreenWidth(5)),
          height: getProportionateScreenHeight(50),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(shape: const CircleBorder()),
              child: Icon(icon, size: getProportionateScreenHeight(25))),
        ),
        Text(text)
      ],
    );
  }
}
