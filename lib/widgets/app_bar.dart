import 'package:aba_mobile_bank_app_demo/widgets/aba_logo.dart';
import 'package:flutter/material.dart';

class TitleAppBarWidgets extends StatelessWidget {
  const TitleAppBarWidgets({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ABALogo(),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
      ],
    );
  }
}
