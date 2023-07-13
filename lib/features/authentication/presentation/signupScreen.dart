import 'package:flutter/material.dart';
import 'package:plant_h/Utils/appTheme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final confPassController = TextEditingController();
  Image? background;

  @override
  void initState() {
    background=Image.asset('assets/images/signup_screen.jpg');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(background!.image, context);
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          image: background!.image,
          fit: BoxFit.cover,
        )),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width / 13),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    '“A garden is a \n grand teacher”',
                    style: AppTheme.quotes3,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height/30,
                  ),
                  TextField(
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: "First Name",
                      fillColor: Color.fromARGB(255, 217, 217, 217),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  TextField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: "Last Name",
                      fillColor: Color.fromARGB(255, 217, 217, 217),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: "Email",
                      fillColor: Color.fromARGB(255, 217, 217, 217),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  TextField(
                    controller: passController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: "Password",
                      fillColor: Color.fromARGB(255, 217, 217, 217),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                  TextField(
                    controller: confPassController,
                    decoration: const InputDecoration(
                      filled: true,
                      labelText: "Confirm Password",
                      fillColor: Color.fromARGB(255, 217, 217, 217),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 25,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
