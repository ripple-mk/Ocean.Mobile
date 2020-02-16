import 'package:flutter/material.dart';

import '../custom_colors.dart';

class CustomButton extends FlatButton {
  CustomButton({Widget child, Function onPressed, Color color = CustomColors.Blue})
      : super(
            child: child,
            onPressed: onPressed,
            color: color,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4))));
}
