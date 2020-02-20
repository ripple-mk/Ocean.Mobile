import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ocean_mobile/custom_colors.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final storage = new FlutterSecureStorage();
  String email = '';
  String name = '';

  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            Container(
                color: Theme.of(context).accentColor,
                child: ListTile(
                    contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                    title: Text(name, style: TextStyle(color: Colors.white)),
                    subtitle:
                        Text(email, style: TextStyle(color: Colors.white)))),
            ListTile(
              title: new Text("Start test"),
              leading: new Icon(Icons.hourglass_empty),
              onTap: start,
            ),
            ListTile(
              title: new Text("Results"),
              leading: new Icon(Icons.list),
              onTap: results,
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

  void setData() async {
    var username = await storage.read(key: 'username');
    if (username != null) {
      setState(() {
        name = username.substring(0, username.indexOf('@'));
        email = username;
      });
    }
  }

  logOut() {
    storage.delete(key: 'token');
    storage.delete(key: 'accountId');
    storage.delete(key: 'username');
    Navigator.of(context).pop();
    Navigator.of(context).pushNamedAndRemoveUntil('/login', (r) => r == null);
  }

  start() {
    Navigator.of(context).pop();
    if (ModalRoute.of(context).settings.name.contains('/start')) return;
    Navigator.of(context).pushNamed('/start');
  }

  results() {
    Navigator.of(context).pop();
    if (ModalRoute.of(context).settings.name.contains('/resultslist')) return;
    Navigator.of(context).pushNamed('/resultslist');
  }
}
