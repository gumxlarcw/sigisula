import 'package:flutter/material.dart';
import 'package:sipadu8203/Data/KepulauanSula_Data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PESulaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCartesianChart(series: <ChartSeries>[
      // Renders line chart
      LineSeries<DataPESula, int>(
          dataSource: pesula,
          xValueMapper: (DataPESula data, _) => data.x,
          yValueMapper: (DataPESula data, _) => data.y)
    ]))));
  }
}
