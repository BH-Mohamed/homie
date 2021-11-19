import 'package:flutter/material.dart';
import 'package:homie/screens/app_space/home/components/tab_layout_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        TabLayoutCategeries()
      ],
    )
    ;
  }
}

