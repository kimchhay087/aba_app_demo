import 'package:aba_mobile_bank_app_demo/widgets/app_bar.dart';
import 'package:aba_mobile_bank_app_demo/widgets/contact_button.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBarWidgets(
          title: 'Contact Us',
        ),
      ),
      body: Container(
        color: colorScheme.primary,
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Icon(
                      PhosphorIcons.fill.circle,
                      size: 120,
                      color: Color(0xFF4D8EAA),
                    ),
                  ),
                  Center(
                    child: Icon(
                      PhosphorIcons.fill.phoneCall,
                      size: 50,
                      color: colorScheme.secondary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Text(
                'Need Help?',
                style: TextStyle(color: colorScheme.secondary, fontSize: 16),
              ),
              SizedBox(height: 12),
              Text(
                'Contact us 24/7 by selecting any channel you prefer below',
                style: TextStyle(color: colorScheme.secondary, fontSize: 12),
              ),
              SizedBox(height: 240),
              ContactButton(
                  onTap: (){},
                  borderColor: colorScheme.secondary,
                  textColor: colorScheme.secondary,
                  buttonText: 'LEAVE FEEDBACK',
              buttonColor: colorScheme.primary,),
              SizedBox(height: 20),
              ContactButton(
                  onTap: (){},
                  borderColor: colorScheme.secondary,
                  textColor: colorScheme.secondary,
                  buttonText: 'FACEBOOK MESSENGER',
                  buttonColor: colorScheme.error),
              SizedBox(height: 20),
              ContactButton(
                  onTap: (){},
                  borderColor: colorScheme.secondary,
                  textColor: colorScheme.secondary,
                  buttonText: 'CALL HOTLINE',
                  buttonColor: colorScheme.error),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
