import 'package:flutter/material.dart';
import '../CommonMethodClass/theme_data.dart';

import '../Routes/routes.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';

class Forget extends StatefulWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  final _logkey = GlobalKey<FormState>();

  String? _emailVerification(String? email) {
    if (isEmailValid(email!)) {
      return null;
    } else {
      return Strings.wrongEmailIdMessage;
    }
  }

  bool isEmailValid(String value) => RegExp(Strings.emailRegEx).hasMatch(value);

  void conditionToShowAlertDialog() {
    if (_logkey.currentState!.validate()) {
      forgetPassword();
    }
  }

  void onpressok() {
    Navigator.pushNamed(context, Routes.signinPage);
  }

  void forgetPassword() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(Strings.otp),
          content: const Text(Strings.otpsent),
          actions: [
            TextButton(
              onPressed: onpressok,
              child: const Text(Strings.ok),
            ),
          ],
          elevation: 15.0,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Strings.imagefile),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 255, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.forgetpass,
                  style: theme.textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      width: 360,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: CommonColors.whiteColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 23, right: 29),
                      child: Center(
                        child: Form(
                          key: _logkey,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 280,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    hintText: Strings.enteremail,
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
                              const SizedBox(
                                height: 50,
                              ),
                              SizedBox(
                                height: 50,
                                width: 180,
                                child: ElevatedButton(
                                  onPressed: () => conditionToShowAlertDialog(),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: CommonColors.greencolor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(
                                        color: CommonColors.greencolor,
                                      ),
                                    ),
                                  ),
                                  child: const Text(Strings.forgetpass),
                                ),
                              ),
                            ],
                          ),
                        ),
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
