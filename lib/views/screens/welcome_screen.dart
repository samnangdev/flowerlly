
import 'package:flowerlly/views/screens/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body,
    );
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
          _textWelcome,
          SizedBox(
            height: 40,
          ),
          _logo,
          SizedBox(
            height: 80,
          ),
          _textJoin,
          SizedBox(
            height: 30,
          ),
          _continueButton
        ],
      ),
    ),
    ],
    
  );
}

Widget get _background{
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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        )
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return LoginScreen();
        }));
      },
      child: const Text(
        "Continue",
        style: TextStyle( fontSize: 20),
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
}


