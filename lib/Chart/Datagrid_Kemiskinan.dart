import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DataGrid_Kemiskinan extends StatefulWidget {
  /// Creates the home page.
  DataGrid_Kemiskinan({Key? key}) : super(key: key);

  @override
  _DataGrid_Kemiskinan createState() => _DataGrid_Kemiskinan();
}

class _DataGrid_Kemiskinan extends State<DataGrid_Kemiskinan> {
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
            'Kemiskinan (persen)',
            textAlign: TextAlign.left,
          ),
        ),
        body: SfDataGridTheme(
          data: SfDataGridThemeData(sortIconColor: Colors.redAccent),
          child: SfDataGrid(
            source: employeeDataSource,
            allowSorting: false,
            columnWidthMode: ColumnWidthMode.fill,
            columns: <GridColumn>[
              GridColumn(
                  columnName: 'tahun',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Tahun',
                        textAlign: TextAlign.center,
                      ))),
              GridColumn(
                  columnName: 'pekepsul',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Kepulauan Sula',
                        textAlign: TextAlign.center,
                      ))),
              GridColumn(
                  columnName: 'pemalut',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Maluku Utara',
                        textAlign: TextAlign.center,
                      ))),
              GridColumn(
                  columnName: 'peindo',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Text(
                        'Indonesia',
                        textAlign: TextAlign.center,
                      ))),
            ],
            selectionMode: SelectionMode.multiple,
          ),
        ));
  }

  List<DataKemiskinanSulaa> getDataKemiskinanSulaa() {
    return [
      DataKemiskinanSulaa('2017', 8.59, 6.35, 10.64),
      DataKemiskinanSulaa('2018', 8.89, 6.64, 9.82),
      DataKemiskinanSulaa('2019', 8.98, 6.77, 9.41),
      DataKemiskinanSulaa('2020', 8.35, 6.78, 9.78),
      DataKemiskinanSulaa('2021', 8.23, 6.89, 10.14),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class DataKemiskinanSulaa {
  /// Creates the employee class with required details.
  DataKemiskinanSulaa(this.tahun, this.pekepsul, this.pemalut, this.peindo);

  /// Id of an employee.

  /// Name of an employee.
  final String tahun;

  /// Designation of an employee.

  /// Salary of an employee.
  final double pekepsul;
  final double pemalut;
  final double peindo;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class DataKemiskinanSulaaDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  DataKemiskinanSulaaDataSource(
      {required List<DataKemiskinanSulaa> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'tahun', value: e.tahun),
              DataGridCell<double>(columnName: 'pekepsul', value: e.pekepsul),
              DataGridCell<double>(columnName: 'pemalut', value: e.pemalut),
              DataGridCell<double>(columnName: 'pemalut', value: e.peindo),
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
