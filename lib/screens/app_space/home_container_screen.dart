import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homie/utils/assets.dart';
import 'package:homie/utils/colors.dart';
import 'package:homie/utils/strings.dart';

import 'home/home_screen.dart';

class HomeScreenContainer extends StatefulWidget {
  const HomeScreenContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenContainer> createState() => _HomeScreenContainerState();
}

class _HomeScreenContainerState extends State<HomeScreenContainer> {

  Color colorSelectedTab = MyColors.colorBlueDark.toWidgetColor();
  Color colorUnselectedTab = MyColors.colorBlueLight.toWidgetColor();

  final List<BottomTabItem> _bottomTabWidgets = [
    BottomTabItem(title: MyStrings.txtHome, icon: MyIcons.iconHome, widget: HomeScreen()),
    BottomTabItem(title: MyStrings.txtPanel, icon: MyIcons.iconPanel, widget: Container()),
    BottomTabItem(title: MyStrings.txtOrders, icon: MyIcons.iconOrders, widget: Container()),
    BottomTabItem(title: MyStrings.txtMenu, icon: MyIcons.iconMenu, widget: Container()),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorBackground.toWidgetColor(),
      body: _bottomTabWidgets.elementAt(_selectedIndex).widget,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 3,
        showUnselectedLabels: true,
        iconSize: 24,
        items: _bottomTabWidgets.map((tab) => BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: SvgPicture.asset(tab.icon, color: colorUnselectedTab, width: 24,height: 24),
          activeIcon:  SvgPicture.asset(tab.icon, color: colorSelectedTab,width: 28,height: 28,),
          label: MyStrings.txtHome,
        ),).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: colorSelectedTab,
        unselectedItemColor:colorUnselectedTab,
        onTap: _onItemTapped,
      ),
    );
  }
}

class BottomTabItem{
  String title ="";
  String icon ="";
  Widget widget = Container();

//<editor-fold desc="Data Methods">


  BottomTabItem({
    required this.title,
    required this.icon,
    required this.widget,
  });

  }

