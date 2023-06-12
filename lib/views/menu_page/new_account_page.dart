import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class NewAccountPage extends StatelessWidget {
  const NewAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Account Opening',
        ),
      ),
    );
  }
}
