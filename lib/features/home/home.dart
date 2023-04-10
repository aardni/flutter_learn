import 'package:flutter/material.dart';
import 'package:flutter_learn/features/home/sections/mainMenu.dart';
import 'package:flutter_learn/features/size_config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    final height = SizeConfig.screenHeight;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_outlined,
            size: getProportionateScreenWidth(30),
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.display_settings_outlined,
                size: getProportionateScreenWidth(30),
                color: Colors.black,
              ))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            floating: true,
            elevation: 0,
            expandedHeight: getProportionateScreenHeight(300),
            collapsedHeight: getProportionateScreenHeight(150),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              titlePadding:
                  EdgeInsets.only(bottom: getProportionateScreenHeight(250)),
              title: const Text(
                '\$0.00',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              background: const MainMenu(),
            ),
          )
        ],
      ),
    );
  }
}
