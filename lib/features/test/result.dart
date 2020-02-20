import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/components/loading.dart';
import 'package:ocean_mobile/custom_colors.dart';
import 'package:openapi/api.dart';

class Result extends StatefulWidget {
  final String id;

  Result(this.id);

  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  int selectedSlice = 1;
  int selectedBar = 1;

  final double inactiveOpacity = 0.3;

  RippleOceanServicesFeaturesResultsGetResponse model;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    var res = await ResultsApi().apiResultsGetResultGet(resultId: widget.id);
    if (res == null) Navigator.of(context).pop();
    setState(() {
      model = res;
    });
  }

  charts.Color getSliceColorForIndex(int index) {
    return getChartColor(chartColors[index - 1].withOpacity(
                    selectedSlice == index ? 1 : inactiveOpacity));
  }

  charts.Color getBarColorForIndex(int index) {
    return getChartColor(chartColors[index - 1].withOpacity(
                    selectedBar == index ? 1 : inactiveOpacity));
  }

  final chartColors = [
    CustomColors.DarkerBlue,
    CustomColors.DarkBlue,
    CustomColors.Blue,
    CustomColors.LightBlue,
    CustomColors.LighterBlue
  ];

  
  
  @override
  Widget build(BuildContext context) {
    if (model == null) return Loading();
    List<charts.Series<ChartItem, String>> pieSeriesList = [
      charts.Series<ChartItem, String>(
          data: model.items.map((res) {
            return ChartItem(
              color: getSliceColorForIndex(model.items.indexOf(res) + 1),
              id: model.items.indexOf(res) + 1,
              name: res.name,
              value: res.percent
            );
          }).toList(),
          id: 'first',
          domainFn: (val, _) => val.name,
          measureFn: (val, _) => val.value,
          colorFn: (val, _) => val.color)
    ];
    
    List<charts.Series<ChartItem, String>> barSeriesList = [
      charts.Series<ChartItem, String>(
          data: model.items.map((res) {
            return ChartItem(
              color: getBarColorForIndex(model.items.indexOf(res) + 1),
              id: model.items.indexOf(res) + 1,
              name: res.name,
              value: res.value
            );
          }).toList(),
          id: 'second',
          domainFn: (val, _) => val.name.substring(0, 1),
          measureFn: (val, _) => val.value,
          colorFn: (val, _) => val.color,
          labelAccessorFn: (val, _) => val.name.substring(0, 1))
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        drawer: CustomDrawer(),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Text('Your result!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: CustomColors.NotBlack, fontSize: 24)),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Container(
                          constraints: BoxConstraints(
                              minHeight:
                                  MediaQuery.of(context).size.height / 2.5,
                              maxHeight:
                                  MediaQuery.of(context).size.height / 2.5),
                          child: charts.PieChart(
                            pieSeriesList,
                            selectionModels: [
                              charts.SelectionModelConfig(
                                  changedListener: _onPieSelectionChanged)
                            ],
                          )),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Wrap(
                          alignment: WrapAlignment.center,
                          direction: Axis.horizontal,
                          children: [
                            Text(
                                pieSeriesList[0]
                                    .data
                                    .firstWhere((x) => x.id == selectedSlice)
                                    .value
                                    .toString(),
                                style: TextStyle(
                                    color: pieSeriesList[0]
                                        .data
                                        .firstWhere(
                                            (x) => x.id == selectedSlice)
                                        .toColor(),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 21)),
                            Text(
                                '%      ' +
                                    pieSeriesList[0]
                                        .data
                                        .firstWhere(
                                            (x) => x.id == selectedSlice)
                                        .name,
                                style: TextStyle(
                                    color: CustomColors.Blue,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18))
                          ]),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Container(
                          constraints:
                              BoxConstraints(minHeight: 200, maxHeight: 200),
                          child: charts.BarChart(
                            barSeriesList,
                            selectionModels: [
                              charts.SelectionModelConfig(
                                  changedListener: _onBarSelectionChanged)
                            ],
                          )),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Wrap(
                          alignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Text(
                                barSeriesList[0]
                                        .data
                                        .firstWhere((x) => x.id == selectedBar)
                                        .name +
                                    ' - ',
                                style: TextStyle(
                                    color: CustomColors.NotBlack,
                                    fontSize: 28)),
                            Text(
                                barSeriesList[0]
                                        .data
                                        .firstWhere((x) => x.id == selectedBar)
                                        .value
                                        .toString() +
                                    '%',
                                style: TextStyle(
                                    color: barSeriesList[0]
                                        .data
                                        .firstWhere((x) => x.id == selectedBar)
                                        .toColor(),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 24)),
                          ]),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Text(
                          model.items[selectedBar - 1].description,
                          style: TextStyle(
                              height: 1.6,
                              color: CustomColors.NotBlack,
                              fontSize: 16)),
                      Padding(padding: EdgeInsets.only(top: 30))
                    ]))));
  }

  static charts.Color getChartColor(Color aColor) {
    return charts.Color(
        a: aColor.alpha, b: aColor.blue, g: aColor.green, r: aColor.red);
  }

  _onPieSelectionChanged(charts.SelectionModel model) {
    setState(() {
      selectedSlice = getSelectedId(model);
    });
  }

  _onBarSelectionChanged(charts.SelectionModel model) {
    setState(() {
      selectedBar = getSelectedId(model);
    });
  }

  int getSelectedId(charts.SelectionModel model) {
    final selectedDatum = model.selectedDatum;

    int val = 1;
    if (selectedDatum.isNotEmpty) {
      val = selectedDatum.first.datum.id;
    }

    return val;
  }
}

class ChartItem {
  final int value;
  final String name;
  final charts.Color color;
  final int id;

  Color toColor() {
    return Color.fromARGB(color.a, color.r, color.g, color.b);
  }

  ChartItem({this.id, this.value, this.name, this.color});
}
