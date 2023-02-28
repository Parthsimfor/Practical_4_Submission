import 'package:flutter/material.dart';
import '../Routes/routes.dart';
import '../CommonMethodClass/theme_data.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _logkey = GlobalKey<FormState>();

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

  bool isEmailValid(String value) => RegExp(Strings.emailRegEx).hasMatch(value);

  void _forgetonpress() {
    Navigator.pushNamed(
      context,
      Routes.forgotPassword,
    );
  }

  void _onsignuppress() {
    Navigator.pushNamed(context, Routes.signuppage);
  }

  void _elevatedBtnLogInOnpress() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          submitForm(),
        ),
      ),
    );
  }

  String submitForm() {
    if (_logkey.currentState!.validate()) {
      return Strings.logInSuccess;
    } else {
      return Strings.someThingWrong;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(Strings.imagefile),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 120, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.welcome,
                  style: theme.textTheme.displayLarge,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  Strings.access,
                  style: theme.textTheme.displayMedium,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.88,
                      height: MediaQuery.of(context).size.height * 0.52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: CommonColors.whiteColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 25, 0),
                      child: Center(
                        child: Form(
                          key: _logkey,
                          child: Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.68,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    hintText: Strings.enterusername,
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
                                height:
                                    MediaQuery.of(context).size.height * 0.032,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.68,
                                child: TextFormField(
                                  obscureText: true,
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                    hintText: Strings.enterpassword,
                                    suffixIcon: GestureDetector(
                                      onTap: _forgetonpress,
                                      child: Text(Strings.forgot,
                                          style: theme.textTheme.labelLarge),
                                    ),
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
                                height:
                                    MediaQuery.of(context).size.height * 0.050,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.052,
                                width: MediaQuery.of(context).size.width * 0.43,
                                child: ElevatedButton(
                                  onPressed: _elevatedBtnLogInOnpress,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CommonColors.greencolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(
                                        color: CommonColors.greencolor,
                                      ),
                                    ),
                                  ),
                                  child: const Text(Strings.signin),
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.032,
                              ),
                              Text(
                                Strings.or,
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.032,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.052,
                                width: MediaQuery.of(context).size.width * 0.43,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CommonColors.whiteColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(
                                        color: CommonColors.greencolor,
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    Strings.withgoogle,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
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
                        (Strings.account),
                        style: theme.textTheme.labelSmall,
                      ),
                      GestureDetector(
                        onTap: _onsignuppress,
                        child: Text(
                          Strings.signup1,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
