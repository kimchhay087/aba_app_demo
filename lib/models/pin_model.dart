import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PinButtonModel {
  final String? digit;
  final IconData icon;

  PinButtonModel({this.digit, required this.icon});
}

List<PinButtonModel> pinButtons = [
  PinButtonModel(digit: '1', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '2', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '3', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '4', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '5', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '6', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '7', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '8', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: '9', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: null, icon: PhosphorIcons.thin.scan),
  PinButtonModel(digit: '0', icon: PhosphorIcons.thin.circle),
  PinButtonModel(digit: null, icon: PhosphorIcons.thin.backspace),
];
