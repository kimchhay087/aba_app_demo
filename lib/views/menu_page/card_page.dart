import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Cards',
        ),
      ),
    );
  }
}
