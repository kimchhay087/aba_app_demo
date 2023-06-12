import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class LoanPage extends StatelessWidget {
  const LoanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Loans',
        ),
      ),
    );
  }
}
