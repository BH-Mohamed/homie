import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homie/screens/app_space//home_container_screen.dart';
import 'package:homie/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Homie',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor:  const Color(MyColors.colorPrimary),
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Color(MyColors.colorPrimary),
            selectionColor: Color(MyColors.colorPrimary),
            selectionHandleColor: Color(MyColors.colorPrimary),
          ),
        ),
        home: HomeScreenContainer());
  }
}
