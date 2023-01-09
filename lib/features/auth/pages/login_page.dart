import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/utils/extension/common_theme_extension.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                          ))
                    ])),
          )
        ],
      ),
    );
  }
}
