import 'package:flutter/material.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_buttons.dart';
import 'package:journo/src/widgets/containers/auth_containers.dart';
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
              Text("Welcome back")
            ],
          ),
        ),
        const SizedBox(
          height: 40,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ))
          ],
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
        LongRectangleButton(onTap: () {}, title: "Login"),
        const SizedBox(
          height: 20,
        ),
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
        const SizedBox(
          height: 20,
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
        const SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Don't have an account?"),

            ///Todo: fix padding,
            TextButton(
              onPressed: widget.show,
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.purple[900]),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
