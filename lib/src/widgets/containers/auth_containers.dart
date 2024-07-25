import 'package:flutter/material.dart';

class AuthContainer extends StatelessWidget {
  final String title;
  final Color color;
  final IconData iconData;
  final Function()? onTap;

  const AuthContainer(
      {super.key,
      required this.title,
      required this.color,
      required this.iconData,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          height: 55,
          width: 380,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: color),
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  iconData,
                  color: color,
                  size: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: color, fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            ),
          ),
        ));
  }
}
