import 'package:flutter/material.dart';
import 'package:sipadu8203/Pages_Main/Indonesia.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DataGrid_Pengangguran extends StatefulWidget {
  /// Creates the home page.
  DataGrid_Pengangguran({Key? key}) : super(key: key);

  @override
  _DataGrid_Pengangguran createState() => _DataGrid_Pengangguran();
}

class _DataGrid_Pengangguran extends State<DataGrid_Pengangguran> {
  List<DataPengangguranSulaa> employees = <DataPengangguranSulaa>[];
  late DataPengangguranSulaaDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getDataPengangguranSulaa();
    employeeDataSource =
        DataPengangguranSulaaDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tingkat Pengangguran Terbuka (persen)',
            style: TextStyle(fontSize: 16),
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

  List<DataPengangguranSulaa> getDataPengangguranSulaa() {
    return [
      DataPengangguranSulaa('2017', 5.86, 5.33, 5.50),
      DataPengangguranSulaa('2018', 5.34, 4.77, 5.30),
      DataPengangguranSulaa('2019', 4.93, 4.97, 5.23),
      DataPengangguranSulaa('2020', 4.90, 5.15, 7.07),
      DataPengangguranSulaa('2021', 2.78, 4.71, 6.49),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class DataPengangguranSulaa {
  /// Creates the employee class with required details.
  DataPengangguranSulaa(this.kec, this.sula, this.malut, this.indo);

  /// Id of an employee.

  /// Name of an employee.
  final String kec;

  /// Designation of an employee.

  /// Salary of an employee.
  final double sula;
  final double malut;
  final double indo;
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class DataPengangguranSulaaDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  DataPengangguranSulaaDataSource(
      {required List<DataPengangguranSulaa> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'kec', value: e.kec),
              DataGridCell<double>(columnName: 'sula', value: e.sula),
              DataGridCell<double>(columnName: 'malut', value: e.malut),
              DataGridCell<double>(columnName: 'indo', value: e.indo),
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
