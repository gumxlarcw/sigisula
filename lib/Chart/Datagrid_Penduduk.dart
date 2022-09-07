import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Kependudukan extends StatefulWidget {
  /// Creates the home page.
  Kependudukan({Key? key}) : super(key: key);

  @override
  _Kependudukan createState() => _Kependudukan();
}

class _Kependudukan extends State<Kependudukan> {
  List<DataPendudukSulaa> employees = <DataPendudukSulaa>[];
  late DataPendudukSulaaDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getDataPendudukSulaa();
    employeeDataSource = DataPendudukSulaaDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Jumlah Penduduk menurut Kecamatan',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.left,
          ),
          bottom: PreferredSize(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 8),
                  child: Text(
                    "di Kabupaten Kepulauan Sula Tahun 2021",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )),
              preferredSize: Size.zero),
        ),
        body: SfDataGridTheme(
          data: SfDataGridThemeData(sortIconColor: Colors.redAccent),
          child: SfDataGrid(
            source: employeeDataSource,
            tableSummaryRows: [
              GridTableSummaryRow(
                  color: Colors.indigo,
                  showSummaryInRow: true,
                  title: 'Total Penduduk : {Penduduk} jiwa',
                  columns: [
                    GridSummaryColumn(
                        name: 'Penduduk',
                        columnName: 'jmlh_pddk',
                        summaryType: GridSummaryType.sum)
                  ],
                  position: GridTableSummaryRowPosition.bottom)
            ],
            allowSorting: true,
            columnWidthMode: ColumnWidthMode.fill,
            columns: <GridColumn>[
              GridColumn(
                  columnName: 'kec',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text('Kecamatan'))),
              GridColumn(
                  columnName: 'jmlh_pddk',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text('Jumlah Penduduk (jiwa)'))),
            ],
            selectionMode: SelectionMode.multiple,
          ),
        ));
  }

  List<DataPendudukSulaa> getDataPendudukSulaa() {
    return [
      DataPendudukSulaa('Sanana', 34642),
      DataPendudukSulaa('Mangoli Utara', 9372),
      DataPendudukSulaa('Sanana Utara', 7764),
      DataPendudukSulaa('Mangoli Tengah', 7700),
      DataPendudukSulaa('Sulabesi Tengah', 7318),
      DataPendudukSulaa('Mangoli Barat', 7136),
      DataPendudukSulaa('Mangoli Timur', 5701),
      DataPendudukSulaa('Sulabesi Selatan', 5628),
      DataPendudukSulaa('Sulabesi Barat', 5621),
      DataPendudukSulaa('Mangoli Selatan', 5172),
      DataPendudukSulaa('Mangoli Utara Timur', 4791),
      DataPendudukSulaa('Sulabesi Timur', 4450),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class DataPendudukSulaa {
  /// Creates the employee class with required details.
  DataPendudukSulaa(this.kec, this.jmlh_pddk);

  /// Id of an employee.

  /// Name of an employee.
  final String kec;

  /// Designation of an employee.

  /// Salary of an employee.
  final int jmlh_pddk;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class DataPendudukSulaaDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  DataPendudukSulaaDataSource({required List<DataPendudukSulaa> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'kec', value: e.kec),
              DataGridCell<int>(columnName: 'jmlh_pddk', value: e.jmlh_pddk),
            ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  Widget? buildTableSummaryCellWidget(
      GridTableSummaryRow summaryRow,
      GridSummaryColumn? summaryColumn,
      RowColumnIndex rowColumnIndex,
      String summaryValue) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        summaryValue,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(8.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
