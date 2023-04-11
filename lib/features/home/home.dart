import 'package:flutter/material.dart';
import 'package:flutter_learn/features/home/sections/mainMenu.dart';
import 'package:flutter_learn/features/size_config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            pinned: true,
            floating: true,
            elevation: 0,
            expandedHeight: getProportionateScreenHeight(210),
            // collapsedHeight: getProportionateScreenHeight(150),
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              titlePadding:
                  EdgeInsets.only(bottom: getProportionateScreenHeight(160)),
              title: const Text(
                '\$0.00',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              background: const MainMenu(),
            ),
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(
              TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: "Tokens"),
                    Tab(text: "NFTs"),
                  ],
                  labelColor: Colors.blue,
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: UnderlineTabIndicator(
                      borderRadius: BorderRadius.circular(20),
                      insets: const EdgeInsets.symmetric(horizontal: 40),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 3,
                      ))),
            ),
            pinned: true,
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('Comment $index'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
