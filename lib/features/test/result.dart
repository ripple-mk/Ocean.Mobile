import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:ocean_mobile/components/custom_appbar.dart';
import 'package:ocean_mobile/components/custom_drawer.dart';
import 'package:ocean_mobile/custom_colors.dart';

class Result extends StatefulWidget {
  final String id;

  Result(this.id);
  
  @override
  ResultState createState() => ResultState();
}

class ResultState extends State<Result> {
  int selectedSlice = 1;
  int selectedBar = 1;

  final double inactiveOpacity = 0.4;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartItem, String>> pieSeriesList = [
      charts.Series<ChartItem, String>(
          data: [
            new ChartItem(
                1,
                20,
                "Openness",
                getChartColor(CustomColors.DarkerBlue.withOpacity(
                    selectedSlice == 1 ? 1 : inactiveOpacity))),
            new ChartItem(
                2,
                20,
                "Conscientiousness",
                getChartColor(CustomColors.DarkBlue.withOpacity(
                    selectedSlice == 2 ? 1 : inactiveOpacity))),
            new ChartItem(
                3,
                20,
                "Extraversion",
                getChartColor(CustomColors.Blue.withOpacity(
                    selectedSlice == 3 ? 1 : inactiveOpacity))),
            new ChartItem(
                4,
                20,
                "Agreeableness",
                getChartColor(CustomColors.LightBlue.withOpacity(
                    selectedSlice == 4 ? 1 : inactiveOpacity))),
            new ChartItem(
                5,
                20,
                "Neuroticism",
                getChartColor(CustomColors.LighterBlue.withOpacity(
                    selectedSlice == 5 ? 1 : inactiveOpacity))),
          ],
          id: 'first',
          domainFn: (val, _) => val.name,
          measureFn: (val, _) => val.value,
          colorFn: (val, _) => val.color)
    ];

    List<charts.Series<ChartItem, String>> barSeriesList = [
      charts.Series<ChartItem, String>(
          data: [
            new ChartItem(
                1,
                20,
                "O",
                getChartColor(CustomColors.DarkerBlue.withOpacity(
                    selectedBar == 1 ? 1 : inactiveOpacity))),
            new ChartItem(
                2,
                20,
                "C",
                getChartColor(CustomColors.DarkBlue.withOpacity(
                    selectedBar == 2 ? 1 : inactiveOpacity))),
            new ChartItem(
                3,
                20,
                "E",
                getChartColor(
                    CustomColors.Blue.withOpacity(selectedBar == 3 ? 1 : inactiveOpacity))),
            new ChartItem(
                4,
                20,
                "A",
                getChartColor(CustomColors.LightBlue.withOpacity(
                    selectedBar == 4 ? 1 : inactiveOpacity))),
            new ChartItem(
                5,
                20,
                "N",
                getChartColor(CustomColors.LighterBlue.withOpacity(
                    selectedBar == 5 ? 1 : inactiveOpacity))),
          ],
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
                          Text(pieSeriesList[0].data.firstWhere((x) => x.id == selectedSlice).value.toString(),
                            style: TextStyle(color: pieSeriesList[0].data.firstWhere((x) => x.id == selectedSlice).toColor(),
                            fontWeight: FontWeight.w900,
                            fontSize: 21
                          )),
                          Text('%      ' + pieSeriesList[0].data.firstWhere((x) => x.id == selectedSlice).name,
                          style: TextStyle(
                            color: CustomColors.Blue,
                            fontWeight: FontWeight.w900,
                            fontSize: 18
                          ))
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
                          Text(pieSeriesList[0].data.firstWhere((x) => x.id == selectedBar).name + ' - ',
                          style: TextStyle(
                            color: CustomColors.NotBlack,
                            fontSize: 28
                          )),
                          Text(
                            pieSeriesList[0].data.firstWhere((x) => x.id == selectedBar).value.toString() + '%',
                            style: TextStyle(color: pieSeriesList[0].data.firstWhere((x) => x.id == selectedBar).toColor(),
                            fontWeight: FontWeight.w900,
                            fontSize: 24
                          )),
                        ]),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      Text(
                          'This factor has been interpreted frequently as openness to experience, intellect, or culture. Traits commonly associated with this dimension include imagination, curiosity, originality, broad-mindedness, and intelligence. Openness results in tolerance for ambiguity, and artistic sensitivity. This dimension describes individual differences in tolerance for and attraction to the unfamiliar. It has been described as a trait influencing an individual’s breadth and complexity of mental experiences. High scorers are described as having wide interests, being imaginative, curious, creative, and insightful. They prefer complexity and change over familiar and stable situations. Low scorers are described as shallow, conventional, unanalytical, down-to-earth, and lacking in imagination. Openness is the most controversial of the Big Five, as there are many issues relating to its definition and measurement about which personality experts disagree. For example, measures of Openness are moderately associated with cognitive ability (i.e., intelligence) and particularly with divergent thinking. One conceptualization of this dimension includes facets such as openness to ideas, actions, values, feelings, aesthetics, and fantasy. Other conceptualizations suggest facets of complexity, culture, creativity/innovativeness, curiosity, intellect, and having a preference for change and variety.',
                          style: TextStyle(
                            height: 1.6,
                            color: CustomColors.NotBlack,
                            fontSize: 16
                          ))
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

  ChartItem(this.id, this.value, this.name, this.color);
}
