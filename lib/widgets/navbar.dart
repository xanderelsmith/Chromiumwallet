import 'package:flutter/material.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget(
      {super.key,
      required this.navigationValue,
      required this.changeNavPostion,
      required this.screensize});
  final Size screensize;
  final int navigationValue;
  final Function(int) changeNavPostion;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      width: screensize.width / 1.8,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              icons.length,
              (index) => navigationValue == index
                  ? ElevatedButton.icon(
                      onPressed: () {
                        changeNavPostion(index);
                      },
                      icon: icons[index],
                      label: const Text('Home'),
                    )
                  : icons[index])),
    );
  }
}

List<Icon> icons = [
  const Icon(Icons.home),
  const Icon(Icons.assistant_navigation),
  const Icon(Icons.wallet),
  const Icon(Icons.person),
];
