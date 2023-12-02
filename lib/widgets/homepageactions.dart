import 'package:chromiumwallet/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class HomePageActions extends StatelessWidget {
  const HomePageActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(
              icon: Icon(
                Icons.arrow_upward,
              ),
              name: 'send'),
          CustomButton(
            name: 'Receive',
            icon: Icon(Icons.arrow_downward),
          ),
          CustomButton(
            name: 'Swap',
            icon: Icon(Icons.swap_vert_outlined),
          ),
        ],
      ),
    );
  }
}
