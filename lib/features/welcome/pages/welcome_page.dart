import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff111b21),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: Color(0xff00a884),
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: 'Read Our ',
                          style:
                              TextStyle(color: Color(0xff8696a0), height: 1.5),
                          children: [
                            TextSpan(
                              text: 'Privacy Policy. ',
                              style: TextStyle(
                                color: Color(0xff53bdeb),
                              ),
                            ),
                            TextSpan(
                                text:
                                    'Tap "Agree and Continue" to accept the '),
                            TextSpan(
                                text: 'Terms of Services. ',
                                style: TextStyle(color: Color(0xff53bdeb)))
                          ])),
                ),
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00a884),
                      foregroundColor: const Color(0xff111b21),
                    ),
                    child: const Text('AGREE AND CONTINUE'),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Material(
                  color: const Color(0xff182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0xff09141a),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.language,
                            color: Color(0xff00a884),
                          ),
                          Text('English'),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff00a884),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
