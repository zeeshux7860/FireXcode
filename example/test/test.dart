
import 'package:firexcode/laravel.dart';


String path = "C:\\xampp\\htdocs\\my_biznis";

void main() {
  createStore(path);
 // LaravelSetup().laravelMigrate(path: path);
  //LaravelSetup().laravelReset(path: path);
}

dynamic createStore(path) {
  var tablename = 'store_details';
  var tableStructure = <String>[
    'store_user_id'.toInteger(),
    'store_user_name'.toLongText(),
    'wp_number'.toLongText(),
    'store_name'.toLongText(),
    'store_location'.toLongText(),
    'store_category'.toLongText(),
    'city'.toLongText(),
    'pincode'.toLongText(),
    'is_verified'.toBoolean(),
    'is_open'.toBoolean(),
    'has_products'.toInteger(),
    'delivery_charge'.toInteger(),
    'free_delivery_above'.toInteger(),
    'minium_order_amount'.toInteger(),
    'cod_enable'.toBoolean(),
    //'mobile_number'.toLongText(),
    'status'.toInteger(),
  ];

  var add = [
    LaraveRequiredValidation(tableStructure: tableStructure)
        .toValidator(request: requestall())
        .toValidate(customMessage: '"message" => "please fill all data !!!"')
        .validate,
    requestall().code.toStoreVariable(variablename: 'input').close(),
    LaravelSaveData(tablename: tablename)
        .create('input'.toVariable())
        .save()
        .close()
        .toStoreVariable(variablename: 'isDone'),
    Condition(
      trueValue: response200('"message" => "Data submited"').close(),
      falseValue: response401('"message" => "Data not submited"').close(),
    ).oneCheck('isDone'.toVariable()).close()
  ].toFuntions('add', request: true);

  var show = [
    LaravelGetData(
      tableName: tablename,
    ).getData().close().toStoreVariable(variablename: "data"),
    response200('"store_results" =>  \$data').close()
  ].toFuntionsAuth("show", request: true);
  LaravelCreateRestApi(
      path: path,
      tableName: tablename,
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: tablename, functionCreate: '''
          $add
          $show
          ''', importModel: [tablename]),
      model: LaravelModel(tablename, tableStructure, [])).create();
}
