import 'package:flutter/material.dart';

class AccountViewCard extends StatelessWidget {
  const AccountViewCard({
    super.key,
    required this.screensize,
  });

  final Size screensize;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: screensize.width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.blue.shade300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: DropdownButton(
                  underline: const SizedBox(),
                  borderRadius: BorderRadius.circular(10),
                  onChanged: (val) {},
                  items: [
                    const DropdownMenuItem(child: Text('My Tron Wallet'))
                  ],
                  icon: const Icon(Icons.keyboard_arrow_down_sharp),
                ),
              ),
            ),
            const Text('\$23456'),
            Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.blue.shade300,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('0x429...f567'),
                ))
          ],
        )));
  }
}
