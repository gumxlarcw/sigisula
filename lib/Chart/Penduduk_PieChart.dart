import 'package:flutter/material.dart';
import 'package:sipadu8203/Data/KepulauanSula_Data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class KepsulPenduduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCircularChart(series: <CircularSeries>[
      PieSeries<DataPendudukSula, String>(
          dataSource: penduduksula,
          xValueMapper: (DataPendudukSula data, _) => data.x,
          yValueMapper: (DataPendudukSula data, _) => data.y,
          dataLabelMapper: (DataPendudukSula data, _) => data.x,
          explodeGesture: ActivationMode.singleTap,
          radius: '60%',
          // Segments will explode on tap
          explode: true,
          explodeOffset: '15%',
          // First segment will be exploded on initial rendering
          explodeIndex: 1,
          dataLabelSettings: DataLabelSettings(
              isVisible: true,
              // Avoid labels intersection
              labelIntersectAction: LabelIntersectAction.shift,
              labelPosition: ChartDataLabelPosition.outside,
              connectorLineSettings: ConnectorLineSettings(
                  type: ConnectorType.curve, length: '40%')))
    ]))));
  }
}
