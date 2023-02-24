import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarGraph {
  String? day;
  int? amount;
  Color? color;
  int? id;

  BarGraph({this.amount, this.day, this.color, this.id});
}

class BarChart extends StatefulWidget {
  BarChart({super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  List<BarGraph> bardata = [
    BarGraph(amount: 200, day: 'monday', color: Colors.white, id: 1),
    BarGraph(amount: 300, day: 'tuesday', color: Colors.white, id: 2),
    BarGraph(amount: 450, day: 'wednesday', color: Colors.white, id: 3),
    BarGraph(amount: 350, day: 'thursday', color: Colors.white, id: 4),
    BarGraph(amount: 400, day: 'friday', color: Colors.white, id: 5),
    BarGraph(amount: 250, day: 'saturday', color: Colors.white, id: 6),
    BarGraph(amount: 150, day: 'sunday', color: Colors.white, id: 7),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.2,
      child: SfCartesianChart(
        tooltipBehavior: TooltipBehavior(
          activationMode: ActivationMode.singleTap,
          enable: true,
          // duration: 5,
          tooltipPosition: TooltipPosition.auto,
          // animationDuration: 1,
          canShowMarker: true,
          header: 'Expense',
          // shouldAlwaysShow: false,
        ),
        primaryXAxis: NumericAxis(
            interactiveTooltip: InteractiveTooltip(enable: true),
            isVisible: false,
            labelStyle: TextStyle(fontSize: 0),
            majorGridLines: MajorGridLines(width: 0),
            majorTickLines: MajorTickLines(width: 0)),
        plotAreaBorderWidth: 0,
        primaryYAxis: NumericAxis(
            isVisible: false,
            labelStyle: TextStyle(fontSize: 0),
            majorGridLines: MajorGridLines(width: 0),
            majorTickLines: MajorTickLines(width: 0)),
        borderWidth: 0,
        series: <ChartSeries>[
          ColumnSeries<BarGraph, int>(
              dataSource: bardata,
              pointColorMapper: (BarGraph amount, _) => amount.color,
              xValueMapper: (BarGraph amount, _) => amount.id,
              yValueMapper: (BarGraph amount, _) => amount.amount),
        ],
        // backgroundColor: Colors.purple,
      ),
    );
  }
}
