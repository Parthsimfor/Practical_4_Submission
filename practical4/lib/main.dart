import 'package:flutter/material.dart';
import '../screens/Sign_in.dart';
import '../screens/forget.dart';
import '../screens/sign_up.dart';

import 'Routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.signuppage,
      routes: {
        Routes.signinPage: (_) => const SignIn(),
        Routes.signuppage: (_) => const SignUp(),
        Routes.forgotPassword: (_) => const Forget(),
      },
    );
  }
}
