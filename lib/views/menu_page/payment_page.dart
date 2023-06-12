import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Payments',
        ),
      ),
    );
  }
}
