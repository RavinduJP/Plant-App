import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/signin_page.dart';

import '../root_page.dart';
import 'widgets/custom_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Image.asset('assets/images/signup.png'),
                // color: Colors.red,
                height: size.height * 0.5,
              ),
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10.0),
              const CustomTextField(
                obscureText: false,
                hintText: "Enter Email",
                icon: Icons.alternate_email,
              ),
              const CustomTextField(
                icon: Icons.person,
                obscureText: false,
                hintText: "Enter full name",
              ),
              const CustomTextField(
                icon: Icons.lock,
                obscureText: true,
                hintText: "Enter Password",
              ),
              const SizedBox(
                height: 5.0,
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
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("QR"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Constants.primaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 18,
                      child: Image.asset('assets/images/google.png'),
                    ),
                    Text(
                      "Sign Up with Google",
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
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
