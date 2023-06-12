import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Accounts',
        ),
      ),
    );
  }
}
