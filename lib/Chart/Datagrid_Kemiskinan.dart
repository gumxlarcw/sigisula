import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Kemiskinan extends StatefulWidget {
  /// Creates the home page.
  Kemiskinan({Key? key}) : super(key: key);

  @override
  _Kemiskinan createState() => _Kemiskinan();
}

class _Kemiskinan extends State<Kemiskinan> {
  List<DataKemiskinanSulaa> employees = <DataKemiskinanSulaa>[];
  late DataKemiskinanSulaaDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getDataKemiskinanSulaa();
    employeeDataSource = DataKemiskinanSulaaDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Kemiskinan',
            textAlign: TextAlign.left,
          ),
        ),
        body: SfDataGridTheme(
          data: SfDataGridThemeData(sortIconColor: Colors.redAccent),
          child: SfDataGrid(
            source: employeeDataSource,
            tableSummaryRows: [
              GridTableSummaryRow(
                  color: Colors.indigo,
                  showSummaryInRow: true,
                  title: 'Total Kemiskinan : {Kemiskinan} jiwa',
                  columns: [
                    GridSummaryColumn(
                        name: 'Kemiskinan',
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
                      child: Text('Jumlah Kemiskinan (jiwa)'))),
            ],
            selectionMode: SelectionMode.multiple,
          ),
        ));
  }

  List<DataKemiskinanSulaa> getDataKemiskinanSulaa() {
    return [
      DataKemiskinanSulaa('Sanana', 34642),
      DataKemiskinanSulaa('Mangoli Utara', 9372),
      DataKemiskinanSulaa('Sanana Utara', 7764),
      DataKemiskinanSulaa('Mangoli Tengah', 7700),
      DataKemiskinanSulaa('Sulabesi Tengah', 7318),
      DataKemiskinanSulaa('Mangoli Barat', 7136),
      DataKemiskinanSulaa('Mangoli Timur', 5701),
      DataKemiskinanSulaa('Sulabesi Selatan', 5628),
      DataKemiskinanSulaa('Sulabesi Barat', 5621),
      DataKemiskinanSulaa('Mangoli Selatan', 5172),
      DataKemiskinanSulaa('Mangoli Utara Timur', 4791),
      DataKemiskinanSulaa('Sulabesi Timur', 4450),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class DataKemiskinanSulaa {
  /// Creates the employee class with required details.
  DataKemiskinanSulaa(this.kec, this.jmlh_pddk);

  /// Id of an employee.

  /// Name of an employee.
  final String kec;

  /// Designation of an employee.

  /// Salary of an employee.
  final int jmlh_pddk;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class DataKemiskinanSulaaDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  DataKemiskinanSulaaDataSource(
      {required List<DataKemiskinanSulaa> employeeData}) {
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
