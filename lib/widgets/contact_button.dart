import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color borderColor;
  final Color textColor;
  final String buttonText;
  final Color buttonColor;

  const ContactButton({
    required this.onTap,
    required this.borderColor,
    required this.textColor,
    required this.buttonText,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Container(
          color: buttonColor,
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                buttonText,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
        ),
      ),
    ),);
  }
}