import 'package:flutter/material.dart';
import 'package:plant_h/Utils/appTheme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 20,
          ),
          Image.asset(
            'assets/images/loginImage.png',
            height: height / 4,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: height / 40, horizontal: width / 20),
            child: const Text(
              '“Gardening made easy, for every\n plant lover”',
              style: AppTheme.quotes,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width / 13, vertical: height / 40),
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 30,
                ),
                TextField(
                  obscureText: true,
                  controller: passController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: const Icon(Icons.lock,),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width/3.5,vertical: 10),
              child: const Text(
                'Login',
                style: AppTheme.login,
              ),
            ),
          )
        ],
      ),
    );
  }
}
