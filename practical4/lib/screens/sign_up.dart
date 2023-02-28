import 'package:flutter/material.dart';
import '../utils/colors.dart';

import '../CommonMethodClass/theme_data.dart';
import '../Routes/routes.dart';
import '../utils/strings.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  String? _nameValidation(String? name) {
    if (name!.isEmpty) {
      return Strings.wrongName;
    } else {
      return null;
    }
  }

  bool isEmailValid(String value) => RegExp(Strings.emailRegEx).hasMatch(value);

  String? _emailVerification(String? email) {
    if (isEmailValid(email!)) {
      return null;
    } else {
      return Strings.wrongEmailIdMessage;
    }
  }

  String? _passwordValidation(String? password) {
    if (password!.length < 8) {
      return Strings.passwordIsNotBig;
    } else if (!RegExp(Strings.oneUppercase).hasMatch(password)) {
      return Strings.passwordUpperCase;
    } else if (!RegExp(Strings.oneLowerCase).hasMatch(password)) {
      return Strings.passwordLowerCase;
    } else if (!RegExp(Strings.oneDigit).hasMatch(password)) {
      return Strings.passwordDigits;
    } else if (!RegExp(Strings.nonWordChar).hasMatch(password)) {
      return Strings.passwordSymbol;
    } else {
      return null;
    }
  }

  String? confirmPasswordValidation(String? value) {
    if (password.text.toString() == confirmPassword.text.toString()) {
      return null;
    } else {
      return Strings.passwordSameError;
    }
  }

  void onPressedForElevated() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, Routes.signinPage);
    }
  }

  void onSignInPress() {
    Navigator.pushNamed(context, Routes.signinPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Strings.imagefile),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 120, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.register,
                      style: theme.textTheme.displayLarge,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      Strings.createnew,
                      style: theme.textTheme.displayMedium,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: CommonColors.whiteColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(22, 20, 25, 0),
                        child: Center(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
                                  child: TextFormField(
                                    autofocus: true,
                                    decoration: InputDecoration(
                                      hintText: Strings.enterfull,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: CommonColors.blackColor,
                                        ),
                                      ),
                                      labelStyle: theme.textTheme.titleMedium,
                                    ),
                                    style: theme.textTheme.bodySmall,
                                    validator: _nameValidation,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.032,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: Strings.enteremail,
                                      focusColor: CommonColors.blackColor,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: CommonColors.blackColor,
                                        ),
                                      ),
                                      labelStyle: theme.textTheme.titleMedium,
                                    ),
                                    style: theme.textTheme.bodySmall,
                                    validator: _emailVerification,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.032,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
                                  child: TextFormField(
                                    controller: password,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: Strings.enterpass,
                                      focusColor: CommonColors.blackColor,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: CommonColors.blackColor,
                                        ),
                                      ),
                                      labelStyle: theme.textTheme.titleMedium,
                                    ),
                                    style: theme.textTheme.bodySmall,
                                    validator: _passwordValidation,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.032,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.68,
                                  child: TextFormField(
                                    controller: confirmPassword,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: Strings.enterconfpass,
                                      focusColor: CommonColors.blackColor,
                                      enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: CommonColors.blackColor,
                                        ),
                                      ),
                                      labelStyle: theme.textTheme.titleMedium,
                                    ),
                                    style: theme.textTheme.bodySmall,
                                    validator: confirmPasswordValidation,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.040,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.052,
                                  width:
                                      MediaQuery.of(context).size.width * 0.43,
                                  child: ElevatedButton(
                                    onPressed: () => onPressedForElevated(),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: CommonColors.greencolor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    child: const Text(Strings.signup1),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.040,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.065,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.19),
                      child: Row(
                        children: [
                          Text(
                            Strings.already,
                            style: theme.textTheme.labelSmall,
                          ),
                          GestureDetector(
                            onTap: onSignInPress,
                            child: Text(
                              Strings.signin,
                              style: theme.textTheme.labelMedium,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
