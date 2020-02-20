import 'package:flutter/material.dart';
import 'package:ocean_mobile/custom_colors.dart';
import 'package:openapi/api.dart';

class CustomTextField extends StatefulWidget {
  final String fieldName;
  final String placeholder;
  final String Function() initVal;
  final void Function(String) editingComplete;
  final void Function(String) onValueChanged;
  final bool isPassword;
  final TextInputType keyboard;
  final TextInputAction action;
  final GlobalKey<FormState> formKey;
  final FocusNode focusNode;
  CustomTextField(
      {this.formKey,
      this.focusNode,
      this.placeholder,
      this.initVal,
      this.editingComplete,
      this.onValueChanged,
      this.isPassword = false,
      this.keyboard = TextInputType.text,
      this.action = TextInputAction.next,
      this.fieldName});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String error;
  Function(Map<String, String> errors) cb;
  TextEditingController controller;
  @override
  void initState() {
    String initVal;
    if(widget.initVal != null)
      initVal = widget.initVal();
    controller = new TextEditingController(text: initVal);
    super.initState();
    cb = (errors) {
      String err;
      if (errors != null && errors.containsKey(widget.fieldName))
        err = errors[widget.fieldName].toString();

        error = err;
    };

    HandleApiErrors.formCallbacks.add(cb);
  }

  TextFormField field;
  @override
  void dispose() {
    HandleApiErrors.formCallbacks.remove(cb);
    super.dispose();
  }

  @override
  Widget build(BuildContext build) {
    field = TextFormField(
        validator: (val) {
          return error;
        },
        focusNode: widget.focusNode,
        onFieldSubmitted: widget.editingComplete,
        initialValue: widget.initVal == null ? '' : widget.initVal(),
        decoration: InputDecoration(
            labelText: widget.placeholder,
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
                borderSide: BorderSide(color: CustomColors.Blue, width: 2))),
        keyboardType: widget.keyboard,
        textInputAction: widget.action,
        onChanged: (val) {
          error = null;
          widget.onValueChanged(val);
        },
        obscureText: widget.isPassword);
    return field;
  }
}
