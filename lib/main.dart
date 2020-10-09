import 'package:cafe_app_freebies/provider/page_index.dart';
import 'package:cafe_app_freebies/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//import 'screens/homescreen.dart';

void main() {
  //ScreenUtil.init(designSize: Size(414, 847.4));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test AppBar',
      theme: ThemeData(
        accentIconTheme: const IconThemeData.fallback().copyWith(
          color: Color(0xFFB98875),
        ),
        primaryColor: const Color(0xFFB98875),
        accentColor: const Color(0xFFCF9775),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
      home: ChangeNotifierProvider(
        create: (context) => BottomNaviBarProvider(),
        child: TabsScreen(),
      ),
    );
  }
}
