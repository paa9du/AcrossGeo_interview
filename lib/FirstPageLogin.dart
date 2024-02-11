import 'package:across_geo_interview/FirstPageExpandedBodyCode.dart';
import 'package:across_geo_interview/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'promilo',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 8,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'Hi, Welcome Back!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width30(context),
                  right: Dimensions.width30(context),
                ),
                child: Container(
                  child: EmailAndPasswordBox(),
                ),
              ),
              LineWithText(),
              SizedBox(
                height: 10,
              ),
              ImageRowState(),
              Login_Signup(
                text1: 'Business User?',
                text2: 'Login Here',
                text3: 'Don`t have an account',
                text4: 'Sign Up',
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                'By continuing, you agree to Promilo`s',
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Terms of Use & Privacy Policy.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
