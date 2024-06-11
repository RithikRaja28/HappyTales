import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:happytales/Screens/Authentication/login.dart';
import 'package:happytales/Screens/Home/home_screen.dart';
import 'package:happytales/Services/authenticate.dart';
import 'package:happytales/Widgets/TextFieldInput.dart';
import 'package:happytales/Widgets/button.dart';
import 'package:happytales/Widgets/snack_bar.dart';

class Signup extends StatefulWidget {
  const Signup({
    super.key,
  });

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() async {
    String res = await AuthServices().signUpUser(
        name: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text);

    if (res == 'success') {
      setState(() {
        isLoading = true;
      });
      Navigator.pushNamed(context, '/welcome_screen');
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
                child: Image.asset('images/singup.jpg'),
              ),
              Textfieldinput(
                  textEditingController: _nameController,
                  hintText: 'Enter Name',
                  icon: Icons.person),
              Textfieldinput(
                  textEditingController: _emailController,
                  hintText: 'Email Address',
                  icon: Icons.email),
              Textfieldinput(
                  textEditingController: _passwordController,
                  hintText: 'Password',
                  isPass: true,
                  icon: Icons.lock),
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
              FormButton(onTap: signUpUser, text: "Sign Up"),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Padding(
                          padding:
                              EdgeInsets.only(left: 5, right: 5, bottom: 2),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
