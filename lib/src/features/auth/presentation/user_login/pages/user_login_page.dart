import 'package:firebase_auth/firebase_auth.dart';
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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  FocusNode emailFocus = FocusNode();
  TextEditingController password = TextEditingController();
  FocusNode passwordFocus = FocusNode();
  bool isLoading = false;

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
              Text("Write. Reflect. Grow.")
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        LongTextFieldForm(
            controller: email,
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
            controller: password,
            onChanged: (value) {},
            hintText: "Password",
            labelText: "Password",
            showSuffixIcon: true,
            showPrefixIcon: true,
            prefixIcon: Icons.password,
            validator: (value) {},
            obsureText: true),
        TextButton(
          onPressed: widget.show,
          child: const Text("Don't have an account signup?"),
        ),
        const SizedBox(
          height: 10,
        ),
        LongRectangleButton(
            onTap: () {
              _login();
            },
            title: "Login"),
        const SizedBox(
          height: 20,
        ),
        const AuthContainer(
          title: 'Continue with google',
          color: Colors.blue,
          iconData: Icons.g_mobiledata_rounded,
        ),
        const SizedBox(
          height: 15,
        ),
        const AuthContainer(
          title: 'Continue with apple',
          color: Colors.black,
          iconData: Icons.apple,
        )
      ],
    );
  }

  Future<void> _login() async {
    setState(() {
      isLoading = true;
    });

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Successfully logged in!'),
        backgroundColor: Colors.red,
      ));
      print("Logged in: ${userCredential.user?.email}");
      var userToken = await FirebaseAuth.instance.currentUser!.getIdToken();
      print(userToken);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.message ?? "Login failed"),
        ),
      );
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
