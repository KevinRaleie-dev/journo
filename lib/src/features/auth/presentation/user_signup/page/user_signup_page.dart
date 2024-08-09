import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:journo/src/data/data_model/model.dart';
import 'package:journo/src/data/data_service/service.dart';
import 'package:journo/src/widgets/buttons/long_rectangle_buttons.dart';
import 'package:journo/src/widgets/screens/auth_layout_screen.dart';
import 'package:journo/src/widgets/textfields/long_textfield_form.dart';

class UserSignupPage extends StatefulWidget {
  final Function() show;

  const UserSignupPage({super.key, required this.show});

  @override
  State<UserSignupPage> createState() => _UserSignupPageState();
}

class _UserSignupPageState extends State<UserSignupPage> {
 // final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  FocusNode email_f = FocusNode();
  final username = TextEditingController();
  FocusNode username_f = FocusNode();
  final password = TextEditingController();
  FocusNode password_f = FocusNode();
  final passwordConfirm = TextEditingController();
  FocusNode passwordConfirm_f = FocusNode();
  bool isLoading = false;

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
          controller: username,
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
          controller: email,
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
          controller: password,
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
          controller: passwordConfirm,
          onChanged: (value) {},
          hintText: "Confirm Password",
          labelText: "Confirm Password",
          showSuffixIcon: true,
          showPrefixIcon: true,
          prefixIcon: Icons.password,
          validator: (value) {},
          obsureText: true),
      TextButton(
        onPressed: widget.show,
        child: const Text("Already have an account?"),
      ),
      const SizedBox(
        height: 20,
      ),
      LongRectangleButton(
          onTap: () async {
            try{
              SignUpModel newUser =
              SignUpModel(name: username.text, email: email.text);
              var status = await SignUpDataService.createUser(newUser);
              if (status == "success") {
                _signUp();
              }
            }catch(e){print(e);}
          },
          title: "Sign Up")
    ]);
  }

  Future<void> _signUp() async {
    setState(() {
      isLoading = true;
    });
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Successfully signed up!'),
        backgroundColor: Colors.red,
      ));
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to sign up: $e')));
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Failed to sign up: $e')));
      setState(() {
        isLoading = false;
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }
}
