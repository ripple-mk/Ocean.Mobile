import 'package:flutter/material.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/components/loading.dart';
import 'package:ocean_mobile/custom_colors.dart';
import 'package:openapi/api.dart';

class ResultsList extends StatefulWidget {
  @override
  _ResultsListState createState() => _ResultsListState();
}

class _ResultsListState extends State<ResultsList> {
  List<RippleOceanServicesFeaturesResultsListResponseItem> results;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    var res = await ResultsApi().apiResultsListGet();
    if (res == null) {
      var r = RippleOceanServicesFeaturesResultsListResponseItem();
      r.id = null;
      r.name = "You have not completed a test yet :(";
      results = [r];
    } else {
      results = res.items;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (results == null) return Loading();

    return Scaffold(
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: results[0].id == null
            ? Center(child: Text(results[0].name, textAlign: TextAlign.center, style: TextStyle(color: CustomColors.Blue)))
            : ListView.builder(
                shrinkWrap: true,
                itemBuilder: (c, index) {
                  var res = results[index];
                  return ListTile(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    title: Text(res.name),
                    trailing: Icon(Icons.chevron_right, size: 32),
                    onTap: () => Navigator.of(context)
                        .pushNamed('/result', arguments: res.id),
                  );
                },
                semanticChildCount: results.length,
                itemCount: results.length));
  }
}
