import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plant_h/Utils/appTheme.dart';
import 'package:plant_h/features/authentication/domain/providers/auth_provider.dart';

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
      body: Consumer(builder: (context, ref, _) {
        final authRepository = ref.watch(authRepositoryProvider);
        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(
              horizontal: width / 13, vertical: height / 40),
          child: Column(
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
              Column(
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
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height / 30,
              ),
              Container(
                width: double.infinity,
                height: height / 18,
                child: OutlinedButton(
                  onPressed: () {
                    validate()
                        ? authRepository.loginUser(
                            email: emailController.text,
                            password: passController.text)
                        : FloatingSnackBar(
                      message: "Email or Password can't be empty",
                      backgroundColor: AppTheme.darkColorScheme.onSecondary,
                      context: context,
                      duration: const Duration(milliseconds: 4000),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: AppTheme.login,
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Container(
                width: double.infinity,
                height: height / 18,
                child: FilledButton(
                  onPressed: () {
                    authRepository.googleLoginUser();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        AppTheme.lightColorScheme.primary),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/googlelogo.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
                        width: width / 30,
                      ),
                      Text(
                        "Login with Google",
                        style: AppTheme.googleLogin,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  const Text(
                    "Didn't have an account?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'SignUp',
                    ),
                  )
                ],
              ),
              TextButton(onPressed: () async{
                  await authRepository.anonymousUser();
                  Navigator.pushNamed(context, '/community');
                }, child: Text("Skip Now>>"))
            ],
          ),
        );
      }),
    );
  }

  bool validate() {
    if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}
