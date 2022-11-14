import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class CloseButton extends StatefulWidget {
  const CloseButton({Key? key}) : super(key: key);

  @override
  _CloseButtonState createState() => _CloseButtonState();
}

class _CloseButtonState extends State<CloseButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Constants.primaryColor.withOpacity(0.15),
        ),
        child: Icon(
          Icons.close,
          color: Constants.primaryColor,
        ),
      ),
    );
  }
}

