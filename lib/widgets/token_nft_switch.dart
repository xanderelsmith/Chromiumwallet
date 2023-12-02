import 'package:chromiumwallet/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class TokenNftSwitch extends StatefulWidget {
  const TokenNftSwitch({
    required this.coinOption,
    super.key,
    required this.coinOptionSwitcher,
  });
  final int coinOption;
  final Function(int) coinOptionSwitcher;

  @override
  State<TokenNftSwitch> createState() => _TokenNftSwitchState();
}

class _TokenNftSwitchState extends State<TokenNftSwitch> {
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 1)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              2,
              (index) => InkWell(
                    onTap: () {
                      widget.coinOptionSwitcher(index);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:
                              widget.coinOption == index ? Colors.blue : null,
                        ),
                        width: screensize.width / 2.4,
                        height: 50,
                        child: Center(
                            child: Text(index == 0 ? 'Tokens' : 'Nfts'))),
                  ))),
    );
  }
}
