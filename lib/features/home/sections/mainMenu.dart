import 'package:flutter/material.dart';
import 'package:flutter_learn/components/circle_button.dart';
import 'package:flutter_learn/features/size_config.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, getProportionateScreenHeight(50), 0, 0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Multi-Coin Wallet 1"),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleButton(Icons.upload_sharp, "Send"),
                CircleButton(Icons.download_sharp, "Receive"),
                CircleButton(Icons.wallet, "Buy"),
                CircleButton(Icons.swap_horiz_outlined, "Swap"),
              ],
            )
          ],
        ));
  }
}
