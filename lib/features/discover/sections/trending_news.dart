import 'package:flutter/material.dart';
import 'package:flutter_learn/features/size_config.dart';

class TrendingNews extends StatelessWidget {
  TrendingNews(
      {required this.channel,
      required this.title,
      required this.type,
      super.key});

  String title;
  String channel;
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
            color: Colors.grey[100],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.black),
              maxLines: null,
            ),
            Row(
              children: [
                Text(
                  channel,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: getProportionateScreenHeight(5)),
                  alignment: Alignment.center,
                  height: getProportionateScreenHeight(20),
                  width: getProportionateScreenWidth(80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300]),
                  child: Text(type),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
