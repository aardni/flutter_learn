import 'package:flutter/material.dart';
import 'package:flutter_learn/features/discover/sections/tax_report_tools.dart';
import 'package:flutter_learn/features/discover/sections/trending_news.dart';
import 'package:flutter_learn/features/size_config.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    final height = SizeConfig.screenHeight;
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(6)),
            child: Text(
              "Discover",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenHeight(24)),
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(22)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Tax Report Tools"),
                  Container(
                    height: getProportionateScreenHeight(270),
                    margin: const EdgeInsets.only(top: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TaxReportTools(
                            title: "Coinpanda",
                            description: "-20% off on tax report",
                            type: "TWT Extra Discount"),
                        TaxReportTools(
                            title: "Koinly",
                            description: "-20% off on tax report",
                            type: "TWT Extra Discount"),
                        TaxReportTools(
                            title: "CoinTracker",
                            description: "-20% off on tax report",
                            type: "TWT Extra Discount"),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 8),
                    child: Column(children: [
                      TrendingNews(
                          channel: "Blockchain News",
                          title: "Mastersard Launches ",
                          type: "MATIC")
                    ]),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
