import 'package:flutter/material.dart';

import '../custom_colors.dart';

class CustomButton extends StatefulWidget {
  final String name;
  final Widget child;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final Color borderColor;
  CustomButton(
      {this.name,
      this.child,
      this.onPressed,
      this.color = CustomColors.Blue,
      this.textColor = Colors.white,
      this.borderColor = Colors.transparent});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Function pressed;

  @override
  void initState() {
    super.initState();
    pressed = widget.onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: widget.child,
        onPressed:  widget.onPressed,
        color: widget.color,
        textColor: widget.textColor,
        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
        shape: RoundedRectangleBorder(
            side: BorderSide(color: widget.borderColor),
            borderRadius: BorderRadius.all(Radius.circular(4))));
  }
}
