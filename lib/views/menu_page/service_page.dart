import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Services',
        ),
      ),
    );
  }
}
