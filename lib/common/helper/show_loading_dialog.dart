import 'package:flutter/material.dart';
import 'package:not_whatsapp_lol/common/extension/common_theme_extension.dart';

import '../utils/colors.dart';

showLoadingDialog(
    {required BuildContext context, required String message}) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const CircularProgressIndicator(
                  color: Coloors.greenDark,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  message,
                  style: TextStyle(
                      fontSize: 15,
                      color: context.theme.greyColor,
                      height: 1.5),
                ))
              ],
            )
          ],
        ),
      );
    },
  );
}
