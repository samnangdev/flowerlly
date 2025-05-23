import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
    );
  }
}

Widget get _body {
  return Stack(
    fit: StackFit.expand,
    children: [
      _background,
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            _logo,
            _formLogin

          ],
        ),
      ),
    ],
  );
}

Widget get _formLogin{
  return Container(
    child: Column(
      children: [
        Text("Log in")
      ],
    ),
  );
}




Widget get _background {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/img/bg-1.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget get _continueButton {
  return Padding(
    padding: const EdgeInsets.only(left: 30, right: 30),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green[500],
          minimumSize: const Size(double.infinity, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
      child: const Text(
        "Continue",
        style: TextStyle(fontSize: 20),
      ),
    ),
  );
}

Widget get _textJoin {
  return Text(
    "Join us",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
  );
}

Widget get _logo {
  return Image.asset("assets/img/logo.png");
}

Widget get _textWelcome {
  return Text(
    "Welcome",
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
  );
}
