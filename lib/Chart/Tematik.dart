import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class tematik extends StatefulWidget {
  const tematik({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<tematik> createState() => _tematik();
}

class _tematik extends State<tematik> {
  MapShapeSource _shapeSource;
  List<MapModel> _mapData;
  MapZoomPanBehavior _zoomPanBehavior;
  int selectedIndex = -1;

  @override
  void initState() {
    _zoomPanBehavior = MapZoomPanBehavior();
    _mapData = _getMapData();
    _shapeSource = MapShapeSource.asset('assets/sula.json',
        shapeDataField: 'nmkec',
        dataCount: _mapData.length,
        primaryValueMapper: (int index) => _mapData[index].kecamatan,
        shapeColorValueMapper: (int index) => _mapData[index].penduduk,
        shapeColorMappers: [
          MapColorMapper(
              from: 0,
              to: 4499,
              color: Color.fromARGB(255, 0, 2255, 1),
              text: '< 4500'),
          MapColorMapper(
              from: 4500,
              to: 5499,
              color: Color.fromARGB(255, 150, 206, 45),
              text: '4500 - 5499'),
          MapColorMapper(
              from: 5500,
              to: 6499,
              color: Color.fromARGB(255, 148, 207, 149),
              text: '5500 - 6499'),
          MapColorMapper(
              from: 6500,
              to: 7499,
              color: Color.fromARGB(255, 252, 205, 1),
              text: '6500 - 7499'),
          MapColorMapper(
              from: 7500,
              to: 8499,
              color: Color.fromARGB(255, 253, 205, 157),
              text: '7500 - 8499'),
          MapColorMapper(
              from: 8500,
              to: 9499,
              color: Color.fromARGB(255, 253, 151, 51),
              text: '8500 - 9499'),
          MapColorMapper(
              from: 9500,
              to: 100000,
              color: Color.fromARGB(255, 253, 0, 3),
              text: '> 9500'),
        ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(50, 30, 50, 20),
        child: Text(
          'Peta Tematik Penduduk Kepulauan Sula, 2021',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 23,
          ),
        ),
      ),
      Container(
        height: 310,
        child: SfMapsTheme(
          data: SfMapsThemeData(
            selectionColor: Color.fromARGB(169, 158, 158, 158),
            layerColor: Colors.blue[100],
            layerStrokeColor: Colors.white,
            layerStrokeWidth: 1.5,
          ),
          child: SfMaps(
            layers: [
              MapShapeLayer(
                zoomPanBehavior: _zoomPanBehavior,
                source: _shapeSource,
                selectedIndex: selectedIndex,
                onSelectionChanged: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                loadingBuilder: (BuildContext context) {
                  return Container(
                      height: 50,
                      width: 50,
                      child: const CircularProgressIndicator(strokeWidth: 3));
                },
                showDataLabels: false,
                shapeTooltipBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 180,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            Center(
                              child: Text(
                                _mapData[index].kecamatan,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Roboto',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.map,
                              color: Colors.white,
                              size: 16,
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 1.2,
                        ),
                        Text(
                          'Jumlah Penduduk : ' +
                              _mapData[index].penduduk2 +
                              ' Jiwa',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                legend: MapLegend(MapElement.shape,
                    enableToggleInteraction: true,
                    position: MapLegendPosition.bottom,
                    title: Text('Penduduk (jiwa)',
                        style: TextStyle(
                            color: Color.fromARGB(211, 0, 0, 0),
                            fontSize: 12,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500))),
                tooltipSettings: const MapTooltipSettings(
                  color: Color.fromARGB(118, 0, 6, 10),
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }

  static List<MapModel> _getMapData() {
    return <MapModel>[
      MapModel('SANANA', 34642, '34.642'),
      MapModel('MANGOLI UTARA', 9372, '9.372'),
      MapModel('SANANA UTARA', 7764, '7.764'),
      MapModel('MANGOLI TENGAH', 7700, '7.700'),
      MapModel('SULABESI TENGAH', 7318, '7.318'),
      MapModel('MANGOLI BARAT', 7136, '7.136'),
      MapModel('MANGOLI TIMUR', 5701, '5.701'),
      MapModel('SULABESI SELATAN', 5628, '5.628'),
      MapModel('SULABESI BARAT', 5621, '5.621'),
      MapModel('MANGOLI SELATAN', 5172, '5.172'),
      MapModel('MANGOLI UTARA TIMUR', 4791, '4.791'),
      MapModel('SULABESI TIMUR', 4450, '4.450'),
    ];
  }
}

class MapModel {
  const MapModel(this.kecamatan, this.penduduk, this.penduduk2);

  final String kecamatan;
  final double penduduk;
  final String penduduk2;
}
