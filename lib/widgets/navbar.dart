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
      width: screensize.width / 1.2,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
              NavIcon.values.length,
              (index) => navigationValue == index
                  ? ElevatedButton.icon(
                      onPressed: () {
                        changeNavPostion(index);
                      },
                      icon: NavIcon.values[index].icon,
                      label: Text(NavIcon.values[index].name),
                    )
                  : GestureDetector(
                      onTap: () {
                        changeNavPostion(index);
                      },
                      child: NavIcon.values[index].icon))),
    );
  }
}

enum NavIcon {
  home(
    Icon(Icons.home),
  ),
  navigation(Icon(Icons.assistant_navigation)),
  wallet(Icon(Icons.wallet)),
  persona(Icon(Icons.person));

  final Icon icon;
  const NavIcon(this.icon);
}
