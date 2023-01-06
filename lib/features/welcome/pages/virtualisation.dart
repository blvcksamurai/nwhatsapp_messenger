import 'package:flutter/material.dart';

import '../../../common/utils/colors.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(
        Icons.language,
        color: Coloors.greenDark,
      ),
    );
  }
}
