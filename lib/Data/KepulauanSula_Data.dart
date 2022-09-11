class DataPendudukSula {
  DataPendudukSula({required this.x, required this.y});
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

class DataPengangguran {
  DataPengangguran(this.tahun, this.sula, this.malut, this.indo);
  final String tahun;
  final double sula;
  final double malut;
  final double indo;
}

class DataKemiskinan {
  DataKemiskinan(this.tahun, this.sula, this.malut, this.indo);
  final String tahun;
  final double sula;
  final double malut;
  final double indo;
}

class DataIPM {
  DataIPM(this.tahun, this.sula, this.malut, this.indo);
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

var pengangguran = [
  DataPengangguran('2017', 5.86, 5.33, 5.50),
  DataPengangguran('2018', 5.34, 4.77, 5.30),
  DataPengangguran('2019', 4.93, 4.97, 5.23),
  DataPengangguran('2020', 4.90, 5.15, 7.07),
  DataPengangguran('2021', 2.78, 4.71, 6.49),
];

var kemiskinan = [
  DataKemiskinan('2017', 8.59, 6.35, 10.64),
  DataKemiskinan('2018', 8.89, 6.64, 9.82),
  DataKemiskinan('2019', 8.98, 6.77, 9.41),
  DataKemiskinan('2020', 8.35, 6.78, 9.78),
  DataKemiskinan('2021', 8.23, 6.89, 10.14),
];

var ipm = [
  DataIPM('2010', 57.06, 62.79, 66.53),
  DataIPM('2011', 57.98, 63.19, 67.09),
  DataIPM('2012', 58.83, 63.93, 67.70),
  DataIPM('2013', 59.77, 64.78, 68.31),
  DataIPM('2014', 60.18, 65.18, 68.90),
  DataIPM('2015', 60.50, 65.91, 69.55),
  DataIPM('2016', 61.25, 66.63, 70.18),
  DataIPM('2017', 62.04, 67.20, 70.81),
  DataIPM('2018', 62.96, 67.76, 71.39),
  DataIPM('2019', 63.64, 68.70, 71.92),
  DataIPM('2020', 63.53, 68.49, 71.94),
  DataIPM('2021', 63.80, 68.76, 72.29),
];
