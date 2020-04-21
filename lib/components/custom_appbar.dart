import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  CustomAppBar({this.actions});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(55);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final storage = new FlutterSecureStorage();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Scaffold.of(context).hasDrawer ?  FlatButton(child: SvgPicture.asset('assets/images/waves.svg', height: 15, width: 15),
      onPressed: () { Scaffold.of(context).openDrawer(); }) : null,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                  child: SvgPicture.asset(
                      'assets/images/logo.svg'),
                      height: 30)
            ]),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: widget.actions,
        elevation: 0,
        primary: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ));
  }
}
