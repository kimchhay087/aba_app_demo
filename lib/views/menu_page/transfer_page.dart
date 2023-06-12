import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class TransferPage extends StatelessWidget {
  const TransferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Transfers',
        ),
      ),
    );
  }
}
