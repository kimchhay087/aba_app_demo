import 'package:aba_mobile_bank_app_demo/widgets/aba_logo.dart';
import 'package:aba_mobile_bank_app_demo/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: TitleAppBarWidgets(
        title: 'Notification',
      ),
    ),
    );
  }
}
