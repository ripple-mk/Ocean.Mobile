import 'package:flutter/material.dart';
import 'package:ocean_mobile/custom_colors.dart';

class CustomTextField extends TextFormField {
  final String fieldName;
  CustomTextField(
      {String Function(String) customValidator,
      String placeholder,
      String initVal,
      void Function(String) onValueChanged,
      bool isPassword = false,
      TextInputType keyboard = TextInputType.text,
      this.fieldName})
      : super(
            validator: customValidator,
            initialValue: initVal,
            decoration: InputDecoration(
                labelText: placeholder,
                labelStyle: TextStyle(color: CustomColors.Blue),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: CustomColors.Blue, width: 1)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: CustomColors.Blue, width: 1)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.grey, width: 1)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.red, width: 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide:
                        BorderSide(color: CustomColors.Blue, width: 2))),
            keyboardType: keyboard,
            onChanged: onValueChanged,
            obscureText: isPassword);
}
