import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:flutter/material.dart';

MapShapeSource _sublayerSource;

@override
void initState() {
  initState();

  _sublayerSource = MapShapeSource.asset(
    'assets/sula.geojson',
    shapeDataField: 'name',
  );
}

class Tematik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SfMaps(
          layers: [
            MapTileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              sublayers: [
                MapShapeSublayer(
                  source: _sublayerSource,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
