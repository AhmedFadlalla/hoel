import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../app_colors/app_colors.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CustomAlert {
  static bool check = false;

  static Alert alert(title, desc, textButton, image, context) {
    return Alert(
      context: context,
      title: title,
      image: Lottie.asset(image),
      buttons: [
        DialogButton(
          color: AppColors.backgroundColor,
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: Text(
            textButton,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: AppColors.textWhiteColor),
          ),
        )
      ],
    );
  }

  static Alert baseAlert(title, desc, textButton, image, context) {
    return Alert(
      context: context,
      title: title,
      image: Lottie.asset(image),
      buttons: [
        DialogButton(
          color: AppColors.backgroundColor,
          onPressed: () => Navigator.pop(context),
          width: 120,
          child: Text(
            textButton,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: AppColors.textWhiteColor),
          ),
        )
      ],
    );
  }

  static Future<bool?>? alert2(title, textButton, context) {
    if (!check) {
      check = true;
      return Alert(
        context: context,
        title: title,
        buttons: [
          DialogButton(
            color: AppColors.textWhiteColor,
            onPressed: () => Navigator.pop(context),
            width: 120,
            child: Text(
              textButton,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: AppColors.textWhiteColor),
            ),
          )
        ],
      ).show();
    } else {
      return null;
    }
  }
}
