import 'package:flutter/material.dart';
import 'package:sipadu8203/Data/KepulauanSula_Data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class KepsulPenduduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
                height: 500,
                margin: EdgeInsets.only(
                  top: 20,
                  right: 2,
                  left: 2,
                ),
                child: SfCircularChart(
                    tooltipBehavior: TooltipBehavior(
                      enable: true,
                      activationMode: ActivationMode.singleTap,
                    ),
                    title: ChartTitle(
                        text: 'Penduduk Kepulauan Sula, 2021',
                        borderWidth: 10,
                        // Aligns the chart title to left
                        alignment: ChartAlignment.center,
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        )),
                    legend: Legend(
                        isVisible: true,
                        alignment: ChartAlignment.center,
                        overflowMode: LegendItemOverflowMode.scroll,
                        position: LegendPosition.bottom,
                        title: LegendTitle(
                            text: 'Kecamatan',
                            textStyle: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500))),
                    series: <CircularSeries>[
                      PieSeries<DataPendudukSula, String>(
                        dataSource: penduduksula,
                        xValueMapper: (DataPendudukSula data, _) => data.x,
                        yValueMapper: (DataPendudukSula data, _) => data.y,
                        dataLabelMapper: (DataPendudukSula data, _) => data.x,
                        explodeGesture: ActivationMode.singleTap,
                        radius: '95%',
                        // Segments will explode on tap
                        explode: true,
                        explodeOffset: '10%',
                        // First segment will be exploded on initial rendering
                        explodeIndex: 1,
                      )
                    ]))));
  }
}
