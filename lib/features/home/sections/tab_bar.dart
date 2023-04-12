import 'package:flutter/material.dart';
import 'package:flutter_learn/data/tokens.dart';

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
        ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('NFTs $index'),
            );
          },
        ),
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
      subtitle: const Text("\$325.33"),
      trailing: Text("${tokens.amount}"),
    );
  }
}
