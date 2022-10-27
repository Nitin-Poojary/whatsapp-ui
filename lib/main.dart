import 'package:flutter/material.dart';
import 'package:whatsappresponsiveui/responsive/responsive.dart';
import 'package:whatsappresponsiveui/screens/mobile_screen_layout.dart';

import 'screens/web_screen_layout.dart';
import 'utils/colors.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          color: appBarColor,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp Clone'),
        ),
        body: const Responsive(
          mobile: MobileScreenLayout(),
          desktop: WebScreenLayout(),
        ),
      ),
    );
  }
}
