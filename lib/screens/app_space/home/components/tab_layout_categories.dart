import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homie/model/category.dart';
import 'package:homie/utils/assets.dart';
import 'package:homie/utils/colors.dart';

class TabLayoutCategeries extends StatefulWidget {
  const TabLayoutCategeries({Key? key}) : super(key: key);

  @override
  _TabLayoutCategeriesState createState() => _TabLayoutCategeriesState();
}

class _TabLayoutCategeriesState extends State<TabLayoutCategeries>with SingleTickerProviderStateMixin {
  late TabController _tabController;


  List<Category> categories =[
    Category("Africa", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("Europe", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("Asia", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("America", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("America", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("America", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("America", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("America", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("America", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
    Category("Australia", "https://previews.123rf.com/images/rusak/rusak0808/rusak080800067/3375962-abstract-map-of-africa-continent.jpg"),
  ];

  @override
  void initState() {
    _tabController = TabController(length: categories.length,initialIndex: 0 ,vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color : Colors.white,
      child: TabBar(
          isScrollable: true,
          controller: _tabController,
        indicatorColor: MyColors.colorBlueLight.toWidgetColor(),
        tabs: categories.map((category) => tabLayoutItem(category)).toList()
      ),
    );
  }


  Widget tabLayoutItem( Category category ){
    return  Container(
      height: 70,
      child: Column(
        children: [

          Container(
              width: 48.0,
              height: 48.0,
              decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: MyColors.colorBlueDark.toWidgetColor()),
                  image:  DecorationImage(
                      fit: BoxFit.fill,
                      image:  NetworkImage(
                        category.image,
                      )
                  )
              )),

        const SizedBox(height: 4),
        Text(category.name , style: TextStyle(color : MyColors.colorBlueDark.toWidgetColor()),)
        ],
      ),
    );
  }
}

