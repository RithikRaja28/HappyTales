import 'package:flutter/material.dart';
import 'package:happytales/Screens/Authentication/signup.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Services/authenticate.dart';
import 'package:happytales/Widgets/TextFieldInput.dart';
import 'package:happytales/Widgets/button.dart';
import 'package:happytales/Widgets/snack_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() async {
    String res = await AuthServices().signInUser(
        email: _emailController.text, password: _passwordController.text);

    if (res == 'success') {
      setState(() {
        isLoading = true;
      });
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ));
    } else {
      setState(() {
        isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: height / 2.7,
                child: Image.asset('images/Login.jpg'),
              ),
              Textfieldinput(
                  textEditingController: _emailController,
                  hintText: 'Email Address',
                  icon: Icons.email),
              Textfieldinput(
                  textEditingController: _passwordController,
                  hintText: 'Password',
                  icon: Icons.lock,
                  isPass: true),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              FormButton(onTap: signInUser, text: "Log in"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
