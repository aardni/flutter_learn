import 'package:flutter/material.dart';
import 'package:flutter_learn/data/tokens.dart';
import 'package:flutter_learn/features/size_config.dart';

class HomeTabBar extends StatefulWidget {
  const HomeTabBar({super.key, required TabController tabController})
      : _tabController = tabController;

  final TabController _tabController;

  @override
  State<HomeTabBar> createState() => _HomeTabBarState();
}

class _HomeTabBarState extends State<HomeTabBar> {
  late Tokens tokens;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget._tabController,
      children: <Widget>[
        ListView.builder(
          itemCount: allTokens.length,
          itemBuilder: (context, index) {
            return ListToken(
              tokens: allTokens[index],
            );
          },
        ),

        //this is for nft sections
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Collectibles will appear here",
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: getProportionateScreenHeight(40),
              width: getProportionateScreenWidth(100),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[100],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    elevation: 0),
                child: const Text(
                  "Receive",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Open on OpenSea.io",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ))
          ]),
        )
        // ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(
        //       title: Text('NFTs $index'),
        //     );
        //   },
        // ),
      ],
    );
  }
}

class ListToken extends StatelessWidget {
  const ListToken({
    required this.tokens,
    super.key,
  });
  final Tokens tokens;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("${tokens.image}"),
        radius: 25,
        foregroundColor: Colors.grey[300],
        backgroundColor: Colors.grey[300],
      ),
      // Image(image: AssetImage("${tokens.image}")),
      title: Text("${tokens.name}"),
      subtitle: Row(
        children: [
          Text("\$${tokens.money} "),
          Text(
            "+${tokens.percentage}%",
            style: const TextStyle(color: Colors.green),
          ),
        ],
      ),
      trailing: Text("${tokens.amount}"),
    );
  }
}
