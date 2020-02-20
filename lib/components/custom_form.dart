import 'package:flutter/material.dart';
import 'package:ocean_mobile/components/custom_button.dart';
import 'package:ocean_mobile/components/custom_field.dart';
import 'package:openapi/api.dart';

class CustomForm extends StatefulWidget {
  final List<Widget> children;
  CustomForm({this.children});

  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    HandleApiErrors.formCallback = (errors) {
      formKey.currentState.validate();
    };
  }

  List<Widget> children = new List<Widget>();

  void buildChildren() {
    children.clear();
    childrenFocus.clear();
    for (var i = widget.children.length - 1; i >= 0; i--) {
      var item = widget.children[i];
      if (item is CustomTextField) {
        CustomTextField field = item;
        var node = FocusNode();
        children.add(CustomTextField(
            action: field.action,
            fieldName: field.fieldName,
            initVal: field.initVal,
            formKey: formKey,
            focusNode: node,
            isPassword: field.isPassword,
            keyboard: field.keyboard,
            onValueChanged: field.onValueChanged,
            editingComplete: (v) {
              var nodeIndex = childrenFocus.indexOf(node);
              FocusNode lastNode;
              if (nodeIndex != -1 && nodeIndex < childrenFocus.length - 1)
                lastNode = childrenFocus[nodeIndex + 1];
              else
                lastNode = null;

              if (lastNode != null) {
                FocusScope.of(node.context).requestFocus(lastNode);
              } else {
                FocusScope.of(node.context).unfocus();
                CustomButton btn = widget.children
                    .firstWhere((x) => x is CustomButton && x.name == 'submit');
                if (btn != null && btn.onPressed != null) {
                  btn.onPressed();
                }
              }
            },
            placeholder: field.placeholder));
        childrenFocus.add(node);
      } else
        children.add(item);
    }
    children = children.reversed.toList();
    childrenFocus = childrenFocus.reversed.toList();
  }

  List<FocusNode> childrenFocus = new List<FocusNode>();

  @override
  Widget build(BuildContext context) {
    buildChildren();
    return Form(
        autovalidate: true,
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ));
  }
}
