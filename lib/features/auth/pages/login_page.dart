import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/utils/colors.dart';
import 'package:not_whatsapp_lol/common/utils/extension/common_theme_extension.dart';
import 'package:not_whatsapp_lol/common/utils/widgets/custom_elevated_button.dart';
import 'package:not_whatsapp_lol/features/auth/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;
  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Ethiopia');
    countryCodeController = TextEditingController(text: '251');
    phoneNumberController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    countryCodeController.dispose();
    countryNameController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(color: context.theme.authAppbarTextColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            splashRadius: 22,
            iconSize: 22,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 40),
            icon: Icon(
              Icons.more_vert,
              color: context.theme.greyColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: 'WhatsApp will need to verify your phone number. ',
                  style: TextStyle(
                    color: context.theme.greyColor,
                    height: 1.5,
                  ),
                  children: [
                    TextSpan(
                      text: "What's my number? ",
                      style: TextStyle(
                        color: context.theme.blueColor,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap: () {},
              readOnly: true,
              controller: countryNameController,
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: Coloors.greenDark,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: () {},
                    controller: countryCodeController,
                    prefixText: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: CustomTextField(
                    controller: phoneNumberController,
                    hintText: 'phone number',
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Carrier chargers may apply',
            style: TextStyle(
              color: context.theme.greyColor,
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
