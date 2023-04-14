import 'package:flutter/material.dart';
import 'package:flutter_learn/features/size_config.dart';

class TaxReportTools extends StatelessWidget {
  TaxReportTools({
    required this.title,
    required this.description,
    required this.type,
    super.key,
  });

  String title;
  String description;
  String type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: getProportionateScreenHeight(70),
          width: getProportionateScreenWidth(110),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            Text(
              description,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(5)),
              alignment: Alignment.center,
              height: getProportionateScreenHeight(20),
              width: getProportionateScreenWidth(125),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300]),
              child: Text(type),
            )
          ],
        )
      ],
    );
  }
}
