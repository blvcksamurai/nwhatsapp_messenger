import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/utils/theme/dark_theme.dart';
import 'package:not_whatsapp_lol/common/utils/theme/light_theme.dart';
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
      home: const WelcomePage(),
    );
  }
}
