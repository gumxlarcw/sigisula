class DataPendudukSula {
  DataPendudukSula({this.x, this.y});
  final String x;
  final num y;
}

class DataPE {
  DataPE(this.tahun, this.sula, this.malut, this.indo);
  final String tahun;
  final double sula;
  final double malut;
  final double indo;
}

var penduduksula = [
  DataPendudukSula(x: 'Sanana', y: 34642),
  DataPendudukSula(x: 'Mangoli Utara', y: 9372),
  DataPendudukSula(x: 'Sanana Utara', y: 7764),
  DataPendudukSula(x: 'Mangoli Tengah', y: 7700),
  DataPendudukSula(x: 'Sulabesi Tengah', y: 7318),
  DataPendudukSula(x: 'Mangoli Barat', y: 7136),
  DataPendudukSula(x: 'Mangoli Timur', y: 5701),
  DataPendudukSula(x: 'Sulabesi Selatan', y: 5628),
  DataPendudukSula(x: 'Sulabesi Barat', y: 5621),
  DataPendudukSula(x: 'Mangoli Selatan', y: 5172),
  DataPendudukSula(x: 'Mangoli Utara Timur', y: 4791),
  DataPendudukSula(x: 'Sulabesi Timur', y: 4450),
];

var pe = [
  DataPE('2016', 5.11, 5.77, 5.03),
  DataPE('2017', 4.83, 7.67, 5.07),
  DataPE('2018', 5.57, 7.86, 5.17),
  DataPE('2019', 6.15, 6.25, 5.02),
  DataPE('2020', 0.11, 5.35, -2.07),
  DataPE('2021', 1.34, 16.40, 3.69),
];
