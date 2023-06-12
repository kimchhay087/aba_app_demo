import 'package:aba_mobile_bank_app_demo/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:aba_mobile_bank_app_demo/routes/app_route.dart';
void main(){
  runApp(RootApp());
}


class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: primaryColors,
          secondary: secondaryColors,
          error: redColors,
          tertiary: blueColors,
        ),
      ),
    );
  }
}
