import 'package:flutter/material.dart';

class ABALogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorScheme =Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 25,
              letterSpacing: 3,
            ),
            children: [
              TextSpan(
                text: 'ABA',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.secondary,
                ),
              ),
              TextSpan(
                text: "'",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: colorScheme.error,
                ),
              ),
            ],
          ),
      ),
    );
  }
}