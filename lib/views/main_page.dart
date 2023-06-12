import 'package:aba_mobile_bank_app_demo/models/card_munu_model.dart';
import 'package:aba_mobile_bank_app_demo/widgets/aba_logo.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '../models/pin_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          icon: Icon(PhosphorIcons.regular.list),
          splashRadius: 24,
        ),
        title: ABALogo(),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/notification');
            },
            icon: Icon(PhosphorIcons.regular.bellSimple),
            splashRadius: 24,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/contact');
            },
            icon: Icon(PhosphorIcons.regular.phoneCall),
            splashRadius: 24,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                PhosphorIcons.fill.square,
                size: 40,
                color: colorScheme.error,
              ),
              IconButton(
                onPressed: () {
                },
                icon: Icon(PhosphorIcons.regular.scan),
                splashRadius: 24,
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Try Kimchhay'),
              accountEmail: Text('App ID: 202325 '),
              currentAccountPicture: CircleAvatar(
                child: Text(
                  'T',
                  style: TextStyle(
                    color: colorScheme.primary,
                    fontSize: 28,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              onDetailsPressed: () {
                _scaffoldKey.currentState?.closeDrawer();
              },
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.calendarCheck),
              title: Text('Schedule Payment'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.bookOpenText),
              title: Text('Checkbook'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.mapPin),
              title: Text('ABA Places'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.swap),
              title: Text('Exchange Rates'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.mapPinLine),
              title: Text('Locator'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.userCirclePlus),
              title: Text('Invite Friend'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.phoneCall),
              title: Text('Contact Us'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.notebook),
              title: Text('Terms & Conditions'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(PhosphorIcons.regular.gear),
              title: Text('Settings'),
              onTap: () {},
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Version'), Text('1.0.0.0')],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  gradient: RadialGradient(colors: [
                Colors.white,
                colorScheme.primary,
              ])),
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1.0,
                childAspectRatio: 0.94,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(CardMenuModel.list.length, (index) {
                  final menu = CardMenuModel.list[index];
                  return GestureDetector(
                    onTap: () {
                      // Handle menu item tap here
                      switch (index) {
                        case 0:
                          _pinBottomSheet(context);
                          break;
                        case 1:
                          Navigator.pushNamed(context, '/card');
                          break;
                        case 2:
                          Navigator.pushNamed(context, '/payment');
                          break;
                        case 3:
                          Navigator.pushNamed(context, '/new_account');
                          break;
                        case 4:
                          Navigator.pushNamed(context, '/cash_to_atm');
                          break;
                        case 5:
                          Navigator.pushNamed(context, '/transfer');
                          break;
                        case 6:
                          Navigator.pushNamed(context, '/scan_qr');
                          break;
                        case 7:
                          Navigator.pushNamed(context, '/loan');
                          break;
                        case 8:
                          Navigator.pushNamed(context, '/service');
                          break;
                      }
                    },
                    child: Container(
                      color: colorScheme.primary,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              menu.icon,
                              color: colorScheme.secondary,
                              size: 40,
                            ),
                            SizedBox(height: 10),
                            Text(
                              menu.title,
                              style: TextStyle(color: colorScheme.secondary),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorScheme.tertiary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Quick Transfer',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: colorScheme.secondary),
                        ),
                      ),
                      SizedBox(height: 14),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Create your template gere to make\n transfer quicker',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, color: colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      PhosphorIcons.regular.arrowsLeftRight,
                      color: colorScheme.secondary,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorScheme.error,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Quick Payment',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: colorScheme.secondary),
                        ),
                      ),
                      SizedBox(height: 14),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Paying your bills with templates is faster',
                          style: TextStyle(
                              fontSize: 14, color: colorScheme.secondary),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      PhosphorIcons.regular.currencyCircleDollar,
                      color: colorScheme.secondary,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: colorScheme.error,
        child: Icon(
          PhosphorIcons.regular.qrCode,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.primary,
        selectedItemColor: colorScheme.secondary,
        unselectedItemColor: colorScheme.secondary.withOpacity(0.7),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.regular.house),
            label: 'Home',
            activeIcon: Icon(PhosphorIcons.fill.house),
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.regular.creditCard),
            label: 'Cards',
            activeIcon: Icon(PhosphorIcons.fill.creditCard),
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.regular.mapPin),
            label: 'Location',
            activeIcon: Icon(PhosphorIcons.fill.mapPin),
          ),
          BottomNavigationBarItem(
            icon: Icon(PhosphorIcons.regular.user),
            label: 'Account',
            activeIcon: Icon(PhosphorIcons.fill.user),
          ),
        ],
      ),
    );
  }

  void _pinBottomSheet(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        isScrollControlled: true,
        builder: (context) {
          return GestureDetector(
            onTap: (){},
            onVerticalDragDown: (context){},
            child: FractionallySizedBox(
              heightFactor: 1.0,
              child: Container(
                color: colorScheme.primary,
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
            ),
          );
        });
}}
