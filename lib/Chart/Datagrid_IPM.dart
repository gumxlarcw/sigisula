import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class DataGrid_IndeksPembangunanManusia extends StatefulWidget {
  /// Creates the home page.
  DataGrid_IndeksPembangunanManusia({Key? key}) : super(key: key);

  @override
  _DataGrid_IndeksPembangunanManusia createState() =>
      _DataGrid_IndeksPembangunanManusia();
}

class _DataGrid_IndeksPembangunanManusia
    extends State<DataGrid_IndeksPembangunanManusia> {
  List<DataIndeksPembangunanManusiaSulaa> employees =
      <DataIndeksPembangunanManusiaSulaa>[];
  late DataIndeksPembangunanManusiaSulaaDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getDataIndeksPembangunanManusiaSulaa();
    employeeDataSource =
        DataIndeksPembangunanManusiaSulaaDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Indeks Pembangunan Manusia',
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

  List<DataIndeksPembangunanManusiaSulaa>
      getDataIndeksPembangunanManusiaSulaa() {
    return [
      DataIndeksPembangunanManusiaSulaa('2010', 57.06, 62.79, 66.53),
      DataIndeksPembangunanManusiaSulaa('2011', 57.98, 63.19, 67.09),
      DataIndeksPembangunanManusiaSulaa('2012', 58.83, 63.93, 67.70),
      DataIndeksPembangunanManusiaSulaa('2013', 59.77, 64.78, 68.31),
      DataIndeksPembangunanManusiaSulaa('2014', 60.18, 65.18, 68.90),
      DataIndeksPembangunanManusiaSulaa('2015', 60.50, 65.91, 69.55),
      DataIndeksPembangunanManusiaSulaa('2016', 61.25, 66.63, 70.18),
      DataIndeksPembangunanManusiaSulaa('2017', 62.04, 67.20, 70.81),
      DataIndeksPembangunanManusiaSulaa('2018', 62.96, 67.76, 71.39),
      DataIndeksPembangunanManusiaSulaa('2019', 63.64, 68.70, 71.92),
      DataIndeksPembangunanManusiaSulaa('2020', 63.53, 68.49, 71.94),
      DataIndeksPembangunanManusiaSulaa('2021', 63.80, 68.76, 72.29),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class DataIndeksPembangunanManusiaSulaa {
  /// Creates the employee class with required details.
  DataIndeksPembangunanManusiaSulaa(
      this.tahun, this.pekepsul, this.pemalut, this.peindo);

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
class DataIndeksPembangunanManusiaSulaaDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  DataIndeksPembangunanManusiaSulaaDataSource(
      {required List<DataIndeksPembangunanManusiaSulaa> employeeData}) {
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
