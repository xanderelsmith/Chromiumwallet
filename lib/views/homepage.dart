import 'package:chromiumwallet/widgets/accountviewcard.dart';
import 'package:chromiumwallet/widgets/custombutton.dart';
import 'package:chromiumwallet/widgets/homepageactions.dart';
import 'package:chromiumwallet/widgets/navbar.dart';
import 'package:chromiumwallet/widgets/nftslistView.dart';
import 'package:chromiumwallet/widgets/token_nft_switch.dart';
import 'package:chromiumwallet/widgets/tokenslistview.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int coinOption = 0;
  int navigationValue = 0;
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          actions: const [Icon(Icons.notifications,color: Colors.black)],
          title: const Text('Hi Susan,', style: TextStyle(color: Colors.black)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
          child: Stack(
            children: [
              Column(
                children: [
                  AccountViewCard(screensize: screensize),
                  const HomePageActions(),
                  TokenNftSwitch(
                      coinOption: coinOption,
                      coinOptionSwitcher: (val) {
                        setState(() {
                          coinOption = val;
                        });
                      }),
                  Expanded(
                    child: coinOption == 0
                        ? const TokenListView()
                        : const NftListViews(),
                  )
                ],
              ),
              Align(
                alignment: const Alignment(0, 0.8),
                child: NavBarWidget(
                  changeNavPostion: (val) {
                    setState(() {
                      navigationValue = val;
                    });
                  },
                  navigationValue: navigationValue,
                  screensize: screensize,
                ),
              )
            ],
          ),
        ));
  }
}
