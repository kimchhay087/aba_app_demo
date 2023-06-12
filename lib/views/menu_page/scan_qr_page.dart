import 'package:flutter/material.dart';

import '../../widgets/app_bar.dart';


class ScanQRPage extends StatelessWidget {
  const ScanQRPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Scan QR',
        ),
      ),
    );
  }
}
