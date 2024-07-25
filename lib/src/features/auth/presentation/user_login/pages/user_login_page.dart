import 'package:flutter/material.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_buttons.dart';
import 'package:journo/src/widgets/screens/app_bar_screen.dart';
import 'package:journo/src/widgets/screens/auth_layout_screen.dart';
import 'package:journo/src/widgets/textfields/long_textfield_form.dart';

class UserLoginPage extends StatefulWidget {
  //this function will allow us to swap between the login page and the sign up page
  final Function() show;

  const UserLoginPage({super.key, required this.show});

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  @override
  Widget build(BuildContext context) {
    return AuthLayoutScreen(
      children: [
        LongTextFieldForm(
            onChanged: (value) {},
            hintText: "Username",
            labelText: "Username",
            showSuffixIcon: false,
            showPrefixIcon: true,
            prefixIcon: Icons.person,
            validator: (value) {},
            obsureText: false),
        const SizedBox(
          height: 20,
        ),
        LongTextFieldForm(
            onChanged: (value) {},
            hintText: "Password",
            labelText: "Password",
            showSuffixIcon: false,
            showPrefixIcon: true,
            prefixIcon: Icons.password,
            validator: (value) {},
            obsureText: false),
        TextButton(
          onPressed: widget.show,
          child: const Text("Dont have an account signup?"),
        ),
        const SizedBox(
          height: 20,
        ),
        LongRectangleButton(onTap: () {}, title: "Login")
      ],
    );
  }
}
