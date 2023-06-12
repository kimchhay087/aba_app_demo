import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class CashToATMPage extends StatelessWidget {
  const CashToATMPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Cash to ATM',
        ),
      ),
    );
  }
}
