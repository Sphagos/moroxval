import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moroxval/pages/agenthome/home_page.dart';
import 'package:moroxval/style/app_style.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('instruction done heatmap'),
    Text('submit to MD'),
    Text('MD-Response'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.homeIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.homeIcon),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.eventIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.eventIcon),
            label: 'History',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.reportIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.reportIcon),
            label: 'MD-Report',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppStyle.notificationsIcon,
              colorFilter: const ColorFilter.mode(
                AppStyle.primarySwatch,
                BlendMode.srcIn,
              ),
            ),
            icon: SvgPicture.asset(AppStyle.notificationsIcon),
            label: 'Feedback',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppStyle.primarySwatch,
        onTap: _onItemTapped,
      ),
    );
  }
}
