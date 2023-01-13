import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:not_whatsapp_lol/common/routes/routes.dart';
import 'package:not_whatsapp_lol/common/theme/dark_theme.dart';
import 'package:not_whatsapp_lol/common/theme/light_theme.dart';
import 'package:not_whatsapp_lol/features/auth/pages/login_page.dart';
import 'package:not_whatsapp_lol/features/auth/pages/user_info_page.dart';
import 'package:not_whatsapp_lol/features/auth/pages/verification_page.dart';
import 'package:not_whatsapp_lol/features/welcome/pages/welcome_page.dart';
import 'package:not_whatsapp_lol/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
