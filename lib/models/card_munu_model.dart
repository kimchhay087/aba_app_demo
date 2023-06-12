import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CardMenuModel{
  final String title;
  final IconData icon;

  CardMenuModel({
    required this.title,
    required this.icon,
});


  static List<CardMenuModel> list =[
    CardMenuModel(
        title: 'Accounts',
        icon: PhosphorIcons.regular.wallet),
    CardMenuModel(
        title: 'Cards',
        icon: PhosphorIcons.regular.creditCard),
    CardMenuModel(
        title: 'Payments',
        icon: PhosphorIcons.regular.currencyCircleDollar),
    CardMenuModel(
        title: 'New Account',
        icon: PhosphorIcons.regular.notePencil),
    CardMenuModel(
        title: 'Cash to ATM',
        icon: PhosphorIcons.regular.money),
    CardMenuModel(
        title: 'Transfers',
        icon: PhosphorIcons.regular.arrowsClockwise),
    CardMenuModel(
        title: 'Scan QR',
        icon: PhosphorIcons.regular.qrCode),
    CardMenuModel(
        title: 'Loans',
        icon: PhosphorIcons.regular.handCoins),
    CardMenuModel(
        title: 'Services',
        icon: PhosphorIcons.regular.boundingBox)
  ];
}