import 'package:flutter/material.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_buttons.dart';
import 'package:journo/src/widgets/containers/auth_containers.dart';
import 'package:journo/src/widgets/screens/auth_layout_screen.dart';
import 'package:journo/src/widgets/textfields/long_textfield_form.dart';

class UserSignupPage extends StatefulWidget {
  final Function() show;

  const UserSignupPage({super.key, required this.show});

  @override
  State<UserSignupPage> createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {
  @override
  Widget build(BuildContext context) {
    return AuthLayoutScreen(children: [
      const Center(
        child: Column(
          children: [
            Text(
              "Journo",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(),
            Text("Write. Reflect. Grow.")
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
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
          hintText: "Email",
          labelText: "Email",
          showSuffixIcon: false,
          showPrefixIcon: true,
          prefixIcon: Icons.email,
          validator: (value) {},
          obsureText: false),
      const SizedBox(
        height: 20,
      ),
      LongTextFieldForm(
          onChanged: (value) {},
          hintText: "Password",
          labelText: "Password",
          showSuffixIcon: true,
          showPrefixIcon: true,
          prefixIcon: Icons.password,
          validator: (value) {},
          obsureText: true),
      const SizedBox(
        height: 20,
      ),
      LongTextFieldForm(
          onChanged: (value) {},
          hintText: "Confirm Password",
          labelText: "Confirm Password",
          showSuffixIcon: true,
          showPrefixIcon: true,
          prefixIcon: Icons.password,
          validator: (value) {},
          obsureText: true),
      const SizedBox(
        height: 20,
      ),
      LongRectangleButton(onTap: () {}, title: "Sign Up"),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
            indent: 15,
            endIndent: 15,
          ),
          Text("Or continue with"),
          Divider(
            color: Colors.grey,
            height: 10,
            thickness: 1,
            indent: 5,
            endIndent: 55,
          ),
        ],
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AuthContainer(
            color: Colors.blue,
            iconData: Icons.g_mobiledata_rounded,
          ),
          AuthContainer(
            color: Colors.black,
            iconData: Icons.apple,
          ),
          AuthContainer(
            color: Colors.blue,
            iconData: Icons.facebook,
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Already have an account?"),

          ///Todo: fix padding,
          TextButton(
            onPressed: widget.show,
            child: Text(
              "Sign In",
              style: TextStyle(color: Colors.purple[900]),
            ),
          ),
        ],
      ),
    ]);
  }
}
