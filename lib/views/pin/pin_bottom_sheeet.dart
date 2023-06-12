import 'package:aba_mobile_bank_app_demo/models/pin_model.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class PinBottomSheet extends StatelessWidget {
  const PinBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: (){_pinBottomSheet(context);},
                child: Text('Pin'),),
          ],
        ),
      ),
    );
  }
}


void _pinBottomSheet(BuildContext context) {
  final colorScheme = Theme.of(context).colorScheme;
  showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      builder: (context) {
    return FractionallySizedBox(
      heightFactor: 1.0,
      child: Container(
        color: colorScheme.primary.withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.only(top: 65),
          child: Column(
            children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text(
                      'Cancel',
                      style:
                      TextStyle(color: colorScheme.secondary, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Icon(
                          PhosphorIcons.fill.circle,
                          size: 140,
                          color: Color(0xFF4D8EAA),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Icon(
                              PhosphorIcons.fill.lockSimple,
                              size: 30,
                              color: colorScheme.secondary,
                            ),
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Center(
                                  child: Container(
                                    width: 65,
                                    height: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: colorScheme.secondary,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        PhosphorIcons.fill.star,
                                        size: 14,
                                        color: colorScheme.primary,
                                      ),
                                      Icon(
                                        PhosphorIcons.fill.star,
                                        size: 14,
                                        color: colorScheme.primary,
                                      ),
                                      Icon(
                                        PhosphorIcons.fill.star,
                                        size: 14,
                                        color: colorScheme.primary,
                                      ),
                                      Icon(
                                        PhosphorIcons.fill.star,
                                        size: 14,
                                        color: colorScheme.primary,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Center(
                child: Text(
                  'Enter PIN to login',
                  style: TextStyle(
                    color: colorScheme.secondary,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 14),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    PhosphorIcons.fill.circle,
                    size: 28,
                    color:colorScheme.secondary,
                  ),
                  SizedBox(width: 7),
                  Icon(
                    PhosphorIcons.fill.circle,
                    size: 28,
                    color: colorScheme.secondary,
                  ),
                  SizedBox(width: 7),
                  Icon(
                    PhosphorIcons.fill.circle,
                    size: 28,
                    color:colorScheme.secondary,
                  ),
                  SizedBox(width: 7),
                  Icon(
                    PhosphorIcons.fill.circle,
                    size: 28,
                    color: colorScheme.secondary,
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  childAspectRatio: 1.2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(pinButtons.length, (index) {
                    final button = pinButtons[index];
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: colorScheme.primary,
                        child: Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              if (button.icon != null &&
                                  button.icon != PhosphorIcons.thin.scan &&
                                  button.icon != PhosphorIcons.thin.backspace)
                                Icon(
                                  button.icon,
                                  color: colorScheme.secondary,
                                  size: 120,
                                ),
                              if (button.icon == PhosphorIcons.thin.scan ||
                                  button.icon == PhosphorIcons.thin.backspace)
                                Icon(
                                  button.icon,
                                  color: colorScheme.secondary,
                                  size: 45,
                                ),
                              if (button.digit != null)
                                Text(
                                  button.digit!,
                                  style: TextStyle(
                                    color: colorScheme.secondary,
                                    fontSize: 24,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  });
}
