import 'package:flutter/material.dart';
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(getProportionateScreenWidth(22), 0,
            getProportionateScreenWidth(22), 0),
        child: Container(
          height: getProportionateScreenHeight(20),
          width: getProportionateScreenWidth(100),
          color: Colors.black,
        ),
      ),
    );
  }
}
