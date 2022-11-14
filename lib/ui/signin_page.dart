import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/root_page.dart';

import 'screens/widgets/custom_text_field.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/signin.png'),
            const Text(
              "Sign In",
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
            CustomTextField(
              icon: Icons.lock,
              obscureText: true,
              hintText: "Enter Password",
            ),
            const SizedBox(
              height: 5.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: const RootPage(),
                      type: PageTransitionType.bottomToTop),
                );
              },
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Constants.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: const RootPage(),
                      type: PageTransitionType.bottomToTop),
                );
              },
              child: Center(
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "Forgot Password? ",
                      style: TextStyle(
                        color: Constants.blackColor,
                      ),
                    ),
                    TextSpan(
                      text: "Reset Here",
                      style: TextStyle(
                        color: Constants.primaryColor,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    height: 20,
                    child: Image.asset('assets/images/google.png'),
                  ),
                  Text(
                    "Sign In with Google",
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
