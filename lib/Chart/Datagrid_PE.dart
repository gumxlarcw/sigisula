import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class PertumbuhanEkonomi extends StatefulWidget {
  /// Creates the home page.
  PertumbuhanEkonomi({Key? key}) : super(key: key);

  @override
  _PertumbuhanEkonomi createState() => _PertumbuhanEkonomi();
}

class _PertumbuhanEkonomi extends State<PertumbuhanEkonomi> {
  List<DataPertumbuhanEkonomiSulaa> employees = <DataPertumbuhanEkonomiSulaa>[];
  late DataPertumbuhanEkonomiSulaaDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getDataPertumbuhanEkonomiSulaa();
    employeeDataSource =
        DataPertumbuhanEkonomiSulaaDataSource(employeeData: employees);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Pertumbuhan Ekonomi',
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

  List<DataPertumbuhanEkonomiSulaa> getDataPertumbuhanEkonomiSulaa() {
    return [
      DataPertumbuhanEkonomiSulaa('2016', 5.11, 5.77, 5.03),
      DataPertumbuhanEkonomiSulaa('2017', 4.83, 7.67, 5.07),
      DataPertumbuhanEkonomiSulaa('2018', 5.57, 7.86, 5.17),
      DataPertumbuhanEkonomiSulaa('2019', 6.15, 6.25, 5.02),
      DataPertumbuhanEkonomiSulaa('2020', 0.11, 5.35, -2.07),
      DataPertumbuhanEkonomiSulaa('2021', 1.34, 16.40, 3.69),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class DataPertumbuhanEkonomiSulaa {
  /// Creates the employee class with required details.
  DataPertumbuhanEkonomiSulaa(
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
class DataPertumbuhanEkonomiSulaaDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  DataPertumbuhanEkonomiSulaaDataSource(
      {required List<DataPertumbuhanEkonomiSulaa> employeeData}) {
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
