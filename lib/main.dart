import 'package:flutter/material.dart';
import 'package:whatapp_ui/ResponsiveLayout/responsiveLayout.dart';
import 'package:whatapp_ui/Screens/desktop.dart';
import 'package:whatapp_ui/Screens/mobile.dart';
import 'package:whatapp_ui/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ResponsiveLayout(
        desktop: DesktopScreen(),
        mobile: MobileScreen(),
      ),
    );
  }
}
