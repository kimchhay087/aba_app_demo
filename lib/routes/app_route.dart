import 'package:aba_mobile_bank_app_demo/views/contact/contact_page.dart';
import 'package:aba_mobile_bank_app_demo/views/main_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/account_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/card_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/cash_to_atm_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/load_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/new_account_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/payment_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/scan_qr_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/service_page.dart';
import 'package:aba_mobile_bank_app_demo/views/menu_page/transfer_page.dart';
import 'package:aba_mobile_bank_app_demo/views/notifications/notification_page.dart';
import 'package:aba_mobile_bank_app_demo/views/pin/pin_bottom_sheeet.dart';
import 'package:flutter/material.dart';

Route<dynamic>? appRoute(settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => MainPage());
    case '/notification':
      return MaterialPageRoute(builder: (context) => NotificationPage());
    case '/contact':
      return MaterialPageRoute(builder: (context) => ContactPage());
    case '/card':
      return MaterialPageRoute(builder: (context) => CardPage());
    case '/payment':
      return MaterialPageRoute(builder: (context) => PaymentPage());
    case '/new_account':
      return MaterialPageRoute(builder: (context) => NewAccountPage());
    case '/cash_to_atm':
      return MaterialPageRoute(builder: (context) => CashToATMPage());
    case '/transfer':
      return MaterialPageRoute(builder: (context) => TransferPage());
    case '/scan_qr':
      return MaterialPageRoute(builder: (context) => ScanQRPage());
    case '/loan':
      return MaterialPageRoute(builder: (context) => LoanPage());
    case '/service':
      return MaterialPageRoute(builder: (context) => ServicePage());
    case '/account':
      return MaterialPageRoute(builder: (context) =>AccountPage());
    case '/pin':
      return MaterialPageRoute(builder: (context) => PinBottomSheet());
    default:
      return MaterialPageRoute(builder: (context) => MainPage());
  }
}
