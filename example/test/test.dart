import 'package:firexcode/laravel.dart';

LaravelSetup setup = LaravelSetup();
String path = 'C:\\xampp\\htdocs\\class\\firexcode';
void main() {
  createPostData();
  setup.laravelReset(path: path);
}

dynamic createPostData() {
  var tablename = 'postdata';
  var save = LaravelSaveData(tablename: tablename);
  var tableStructure = <String>[
    'name'.toLongText(),
    'roll_no'.toInteger(),
    'is_'.toBoolean()
  ];
  var addForm = [
    LaraveRequiredValidation(tableStructure: tableStructure)
        .toValidator(
          request: requestall(),
        )
        .toValidate(customMessage: "'message' => 'something went to wrong'")
        .validate,
    requestall().code.toStoreVariable(variablename: 'input').close(),
    save
        .create('input'.toVariable())
        .save()
        .close()
        .toStoreVariable(variablename: 'isDone'),
    Condition(
      trueValue: response200("['message' => 'Data submited']").close(),
      falseValue: response401("['message' => 'Data not submited']").close(),
    ).oneCheck('isDone'.toVariable()).close()
  ].toFuntions('addData', request: true);
  LaravelCreateRestApi(
          controller: LaravelTableController(
              functionCreate: '''''',
              importModel: ['PostData'],
              tableName: tablename),
          model: LaravelModel(tablename, tableStructure, []),
          table: LaravelTableCreate(tablename, tableStructure),
          path: path,
          tableName: tablename)
      .create();
}

//Future<void> main() async {}

// class MyDataType extends WithWarning<String> {
//   MyDataType(String result, List warnings) : super(result, warnings);
//   String get code => result;
// }

// class WithWarning<T> {
//   final T result;
//   final List<Warning> warnings;

//   WithWarning(this.result, this.warnings);
// }

// class Warning {
//   final String warning;
//   final String path;

//   Warning(this.warning, this.path);
// }
