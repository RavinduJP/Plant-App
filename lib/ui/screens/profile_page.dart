import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/widgets/profile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage:
                    ExactAssetImage('assets/images/profilePic.jpg'),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Constants.primaryColor.withOpacity(0.5),
                  width: 5,
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Profile name",
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                    child: Image.asset('assets/images/verified.png'),
                  ),
                ],
              ),
            ),
            Text(
              "useremail@gmail.com",
              style: TextStyle(
                color: Constants.blackColor.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: size.height * 0.6,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileWidget(icon: Icons.person, title: "My Profile",),
                  ProfileWidget(icon: Icons.settings, title: "Settings",),
                  ProfileWidget(icon: Icons.notifications, title: "Notifications",),
                  ProfileWidget(icon: Icons.chat, title: "FAQs",),
                  ProfileWidget(icon: Icons.share, title: "Share",),
                  ProfileWidget(icon: Icons.logout, title: "Log Out",),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

