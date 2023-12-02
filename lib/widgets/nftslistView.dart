import 'package:chromiumwallet/utils/constants.dart';
import 'package:chromiumwallet/widgets/customdivider.dart';
import 'package:flutter/material.dart';

class NftListViews extends StatelessWidget {
  const NftListViews({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              context: context,
              isScrollControlled: true,
              builder: (context) =>
                  ExtendableBottomSheet(index: index, screensize: screensize));
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.accents[index]),
            margin: const EdgeInsets.all(10),
            child: const Icon(
              Icons.flutter_dash,
              size: 45,
            )),
      ),
    );
  }
}

class ExtendableBottomSheet extends StatefulWidget {
  const ExtendableBottomSheet({
    super.key,
    required this.screensize,
    required this.index,
  });

  final Size screensize;
  final int index;

  @override
  State<ExtendableBottomSheet> createState() => _ExtendableBottomSheetState();
}

class _ExtendableBottomSheetState extends State<ExtendableBottomSheet> {
  double sheetheight = 500;
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;

    return GestureDetector(
        onVerticalDragUpdate: (details) {
          setState(() {
            sheetheight -= details.primaryDelta!;
          });
          if (details.primaryDelta! <= 30) {
            Navigator.pop(context);
          }
        },
        child: Container(
          height: sheetheight,
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 13),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: CustomDivider()),
                Container(
                    height: 200,
                    width: widget.screensize.width - 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.accents[widget.index],
                    ),
                    child: const Icon(
                      Icons.flutter_dash,
                      size: 105,
                    )),
                Text('The Big head', style: boldtextStyle),
                Row(
                  children: [
                    Icon(Icons.currency_bitcoin),
                    const Text('1.235BTC')
                  ],
                ),
                Text('Description', style: boldtextStyle),
                Text(
                    'The Big head is a collection of thousands of unique crafted NFTS having living on the Euthereum Blockchain'),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        fixedSize: Size(screensize.width - 10, 45)),
                    child: Text('Send'))
              ]),
        ));
  }
}
