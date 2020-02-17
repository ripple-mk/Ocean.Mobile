import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("ice"),
                accountEmail: Text("ice@ripple.mk"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("ice"),
                )),
            ListTile(
              title: new Text("Start test"),
              leading: new Icon(Icons.hourglass_empty),
              onTap: start,
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Log out"),
              leading: new Icon(Icons.exit_to_app),
              onTap: logOut,
            )
          ],
        ));
  }

  logOut() {
    Navigator.of(context).pop();
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (r) => r == null);
  }

  start() {
    if (ModalRoute.of(context).settings.name.contains('/start')) {
      Navigator.of(context).pop();
      return;
    }
    Navigator.of(context).pop();
    Navigator.of(context).pushNamed('/start');
  }
}
