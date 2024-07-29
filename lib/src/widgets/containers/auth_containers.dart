import 'package:flutter/material.dart';

class AuthContainer extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Function()? onTap;

  const AuthContainer(
      {super.key, required this.color, required this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: SizedBox(
          height: 40,
          width: 50,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  iconData,
                  color: color,
                  size: 35,
                ),
              ],
            ),
          ),
        ));
  }
}
