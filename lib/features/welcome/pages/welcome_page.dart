import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/extension/common_theme_extension.dart';

import '../../../common/routes/routes.dart';
import '../../../common/widgets/custom_elevated_button.dart';
import '../widgets/language_button.dart';
import '../widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                child: Column(
              children: [
                const Text(
                  'Welcome to Whatsapp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const PrivacyAndTerms(),
                CustomElevatedButton(
                  onPressed: () => navigateToLoginPage(context),
                  text: "AGREE AND CONTINUE",
                ),
                const SizedBox(
                  height: 50,
                ),
                const LanguageButton()
              ],
            )),
          ],
        ),
      ),
    );
  }
}
