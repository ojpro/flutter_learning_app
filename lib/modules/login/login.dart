// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learning_app/shared/components/components.dart';
import 'package:flutter_learning_app/shared/components/inputs.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Fields Controllers
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Login",
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          width: double.infinity,
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                DefaultInput(
                  label: "Email",
                  controller: emailController,
                  validation: (value) {
                    if (value == "") {
                      return "Email is not valid";
                    }
                    return null;
                  },
                  type: TextInputType.emailAddress,
                  prefix: Icons.email,
                ),
                SizedBox(
                  height: 20,
                ),
                DefaultInput(
                    label: "Password",
                    controller: passwordController,
                    validation: (value) {
                      if (value == "") {
                        return "Password too short";
                      }
                      return null;
                    },
                    type: TextInputType.visiblePassword,
                    isPassword: hidePassword,
                    prefix: Icons.lock,
                    suffix: Icons.remove_red_eye,
                    onSuffixPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    }),
                SizedBox(
                  height: 20,
                ),
                DefaultButton(
                    title: "login",
                    onClick: () {
                      if (formKey.currentState!.validate()) {
                        print("Logining");
                      }
                    }),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You don't have an account?",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign-up",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
