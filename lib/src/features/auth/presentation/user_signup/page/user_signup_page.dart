import 'package:flutter/material.dart';
import 'package:journo/src/widgets/screens/app_bar_screen.dart';
import 'package:journo/src/widgets/textfields/log_textfield_form.dart';

class UserSignupPage extends StatefulWidget {
  final Function() show;

  const UserSignupPage({super.key, required this.show});

  @override
  State<UserSignupPage> createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {
  @override
  Widget build(BuildContext context) {
    return AppBarScreen(
      shouldScroll: false,
      title: "Sign Up Screen",
      shouldHaveFloatingButton: false,
      shouldBeCentered: true,
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
        TextButton(
          onPressed: widget.show,
          child: const Text("Already have an account?"),
        )
      ],
    );
  }
}
