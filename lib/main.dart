import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/theme/dark_theme.dart';
import 'package:not_whatsapp_lol/common/theme/light_theme.dart';
import 'package:not_whatsapp_lol/features/auth/pages/login_page.dart';
import 'package:not_whatsapp_lol/features/auth/pages/user_info_page.dart';
import 'package:not_whatsapp_lol/features/auth/pages/verification_page.dart';
import 'package:not_whatsapp_lol/features/welcome/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nWhatsapp Messenger',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const UserInfoPage(),
    );
  }
}
