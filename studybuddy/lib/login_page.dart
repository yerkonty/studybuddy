import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 109, 166, 223),
            Color.fromARGB(255, 244, 214, 212),
          ],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: _page(),
        ));
  }
}

Widget _page() {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(),
          const SizedBox(height: 50),
          _inputField("Username", TextEditingController()),
          const SizedBox(height: 20),
          _inputField("Password", TextEditingController(), isPassword: true),
          const SizedBox(height: 50),
          _loginBtn(),
          const SizedBox(height: 20),
          _extraText()
        ],
      )));
}

Widget _icon() {
  return Container(
      child: Container(
          height: 150,~
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.network(
                        'file:///C:/Users/nurul/Downloads/Telegram%20Desktop/Study.png').image,
                fit: BoxFit.cover),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(115, 148, 65, 65),
                offset: Offset(-5, 5),
                blurRadius: 5,
                spreadRadius: 5,
              )
            ],
          )));
}

Widget _inputField(String hintText, TextEditingController controller,
    {isPassword = false}) {
  var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white));
  return TextField(
    style: const TextStyle(color: Colors.white), 
    controller: controller,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.white),
      enabledBorder: border,
      focusedBorder: border,
    ),
    obscureText: isPassword,
  );
}

Widget _loginBtn() {
  return ElevatedButton(
    onPressed: () {},
    child: const SizedBox(
        width: double.infinity,
        child: Text(
          "Sign In ",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        )),
    style: ElevatedButton.styleFrom(
      shape: const StadiumBorder(),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
  );
}

Widget _extraText() {
  return const Text("Can't access to your account?",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white));
}
