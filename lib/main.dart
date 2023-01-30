import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:not_whatsapp_lol/common/extension/common_theme_extension.dart';
import 'package:not_whatsapp_lol/common/routes/routes.dart';
import 'package:not_whatsapp_lol/common/theme/dark_theme.dart';
import 'package:not_whatsapp_lol/common/theme/light_theme.dart';
import 'package:not_whatsapp_lol/features/auth/controller/auth_controller.dart';
import 'package:not_whatsapp_lol/features/auth/pages/login_page.dart';
import 'package:not_whatsapp_lol/features/auth/pages/user_info_page.dart';
import 'package:not_whatsapp_lol/features/auth/pages/verification_page.dart';
import 'package:not_whatsapp_lol/features/home/pages/home_page.dart';
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

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'nWhatsapp Messenger',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: ref.watch(userInfoAuthProvider).when(
        data: (user) {
          if (user == null) return const WelcomePage();
          return const HomePage();
        },
        error: (error, trace) {
          return const Scaffold(
            body: Center(
              child: Text('Omoh, Something went wrong!'),
            ),
          );
        },
        loading: () {
          return const Scaffold(
            body: Center(
              child: Icon(
                Icons.whatsapp,
                size: 30,
              ),
            ),
          );
        },
      ),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
