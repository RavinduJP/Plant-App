import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/signin_page.dart';

import 'widgets/custom_text_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset('assets/images/reset-password.png'),
                // color: Colors.red,
                height: size.height * 0.5,
              ),
              const Text(
                "Forgot\nPassword",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20.0),
              const CustomTextField(
                obscureText: false,
                hintText: "Enter Email",
                icon: Icons.alternate_email,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Constants.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  child: const Center(
                    child: Text(
                      "Reset Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const SignIn(),
                        type: PageTransitionType.bottomToTop),
                  );
                },
                child: Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                        text: "Have an Account? ",
                        style: TextStyle(
                          color: Constants.blackColor,
                        ),
                      ),
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: Constants.primaryColor,
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
