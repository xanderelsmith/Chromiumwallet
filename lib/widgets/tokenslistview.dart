import 'package:flutter/material.dart';

class TokenListView extends StatelessWidget {
  const TokenListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => const ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.amberAccent,
          child: Icon(
            Icons.currency_bitcoin,
          ),
        ),
        title: Text('Ether'),
        trailing: Text('0 BtC'),
        subtitle: Text.rich(
          TextSpan(text: '\$1,142.01', children: [
            TextSpan(
              text: '-2.26%',
            )
          ]),
        ),
      ),
    );
  }
}
