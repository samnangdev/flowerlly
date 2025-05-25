import 'package:flowerlly/views/screens/login_screen.dart';
import 'package:flowerlly/views/screens/otp_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
        SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 110,
                ),
                _logo,
                SizedBox(
                  height: 70,
                ),
                _formLogin,
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget get _formLogin {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.75,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700]),
            ),
            SizedBox(
              height: 40,
            ),
            _email,
            SizedBox(
              height: 25,
            ),
            _password,
            SizedBox(
              height: 25,
            ),
            _confirmPassword,
            SizedBox(
              height: 25,
            ),
            _signupButton,
            SizedBox(
              height: 20,
            ),
            _divided,
            SizedBox(
              height: 0,
            ),
            _continueWith,
            _or,
            SizedBox(
              height: 15,
            ),
            _guestButton,
            SizedBox(
              height: 10,
            ),
            _textSignup
          ],
        ),
      ),
    );
  }

  Widget get _textSignup {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have account?"),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            child: Text(
              "Log in",
              style: TextStyle(fontWeight: FontWeight.bold),
            ))
      ],
    );
  }

  Widget get _guestButton {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
          minimumSize: const Size(double.infinity, 45),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.green)),
        ),
        onPressed: () {},
        child: const Text(
          "Continue as a guest",
          style: TextStyle(fontSize: 15, color: Colors.green),
        ),
      ),
    );
  }

  Widget get _or {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              height: 10,
              thickness: 1,
              endIndent: 10,
              color: Color.fromARGB(255, 187, 187, 187),
            ),
          ),
          Text(
            "Or",
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
            child: Divider(
              height: 10,
              thickness: 1,
              indent: 10,
              color: Color.fromARGB(255, 187, 187, 187),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _continueWith {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/img/google-logo.png",
          width: 50,
          height: 50,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/img/fb.png",
          width: 100,
          height: 100,
        ),
        SizedBox(
          width: 15,
        ),
        Image.asset(
          "assets/img/apple-black.png",
          width: 50,
          height: 50,
        ),
      ],
    );
  }

  Widget get _divided {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              height: 10,
              thickness: 1,
              endIndent: 10,
              color: Color.fromARGB(255, 187, 187, 187),
            ),
          ),
          Text(
            "Continue with",
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
            child: Divider(
              height: 10,
              thickness: 1,
              indent: 10,
              color: Color.fromARGB(255, 187, 187, 187),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _email {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              labelText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }

  Widget get _password {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              labelText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }

  Widget get _confirmPassword {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: SizedBox(
        height: 50,
        child: TextField(
          decoration: InputDecoration(
              labelText: "Confirm Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }

  Widget get _background {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/img/bg-1.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget get _signupButton {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[500],
            minimumSize: const Size(double.infinity, 45),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return OptScreen();
          }));
        },
        child: const Text(
          "Sign Up",
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
    return Image.asset(
      "assets/img/logo.png",
      width: 170,
    );
  }

  Widget get _textWelcome {
    return Text(
      "Welcome",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    );
  }
}
