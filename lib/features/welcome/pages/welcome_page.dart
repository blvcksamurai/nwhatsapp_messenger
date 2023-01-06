import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/utils/colors.dart';
import 'package:not_whatsapp_lol/common/utils/extension/common_theme_extension.dart';

import '../../../common/utils/widgets/custom_elevated_button.dart';
import '../widgets/language_button.dart';
import '../widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                  onPressed: () {},
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
