import 'package:flutter/material.dart';

void main() {
  runApp(LogIn());
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "";
  String password = "";

  TextEditingController emailText = TextEditingController();
  TextEditingController passwordText = TextEditingController();

  void validation() {
    setState(() {
      email = emailText.text;
      password = passwordText.text;
      if (email == "tariq@gmail.com" && password == "112233") {
        email = "Welcome";
        password = "";
      } else {
        email = "Invalid Email or Password";
        password = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "Log In",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                TextField(
                  controller: emailText,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    hintText: "Enter your email ",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordText,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    hintText: "Enter your password ",
                  ),
                  obscureText: true, // for password visibility
                ),
                const SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: validation,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: Text("Log In"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(email),
                Text(password),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
