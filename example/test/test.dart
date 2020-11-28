import 'package:firexcode/laravel.dart';

String path = 'C:\\xampp\\htdocs\\Groclik';

void main() {
  // createSubCategory(path);

  // createphoneauth(path);
  LaravelSetup().laravelReset(path: path);
}

dynamic createphoneauth(path) {
  var tablename = 'phone_auth';
  var tableStructure = <String>[
    'phone_no'.toLongText(),
    'otp'.toLongText(),
    'ip_address'.toLongText(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: tablename,
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: tablename, functionCreate: '''
          $add
          ''', importModel: [tablename]),
      model: LaravelModel(tablename, tableStructure, [])).create();
}

dynamic createTimeSLotList(path) {
  var tablename = 'Order_Time_Slot_List';
  var tableStructure = <String>[
    'days'.toLongText(),
    'time_slot_id'.toLongText(),
    'timeing'.toLongText(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: tablename,
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: tablename, functionCreate: '''
          $add
          ''', importModel: [tablename]),
      model: LaravelModel(tablename, tableStructure, [])).create();
}

dynamic createTimeSLot(path) {
  var tablename = 'Order_Time_Slot';
  var tableStructure = <String>[
    'days'.toLongText(),
    'details'.toLongText(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: tablename,
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: tablename, functionCreate: '''
          $add
          ''', importModel: [tablename]),
      model: LaravelModel(tablename, tableStructure, [])).create();
}

dynamic createOrderPayment(path) {
  var tablename = 'Order_Payment';
  var tableStructure = <String>[
    'order_id'.toBigInteger(),
    'payment_mode'.toLongText(),
    'transaction_id'.toLongText(),
    'details'.toLongText(),
    'sale_price'.toDouble(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: tablename,
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: tablename, functionCreate: '''
          $add
          ''', importModel: [tablename]),
      model: LaravelModel(tablename, tableStructure, [])).create();
}

dynamic createOrderProducts(path) {
  var tablename = 'Order_products';
  var tableStructure = <String>[
    'order_id'.toBigInteger(),
    'name'.toLongText(),
    'desc'.toLongText(),
    'price'.toDouble(),
    'sale_price'.toDouble(),
    'quantity'.toInteger(),
    'time_slot_details'.toLongText(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: 'OrderProducts',
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: 'OrderProducts', functionCreate: '''
          $add
          ''', importModel: ['OrderProducts']),
      model: LaravelModel('OrderProducts', tableStructure, [])).create();
}

dynamic createOrder(path) {
  var tablename = 'Order_Details';
  var tableStructure = <String>[
    'name'.toLongText(),
    'address'.toLongText(),
    'pin_code'.toBigInteger(),
    'land_mark'.toLongText(),
    'query'.toLongText(),
    'time_slot'.toLongText(),
    'time_slot_details'.toLongText(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: 'OrderDetails',
      table: LaravelTableCreate(tablename, tableStructure),
      controller:
          LaravelTableController(tableName: 'OrderDetails', functionCreate: '''
          $add
          ''', importModel: ['OrderDetails']),
      model: LaravelModel('OrderDetails', tableStructure, [])).create();
}

dynamic createSubCategory(path) {
  var tablename = 'products';
  var tableStructure = <String>[
    'meta_title'.toLongText(),
    'meta_des'.toLongText(),
    'title'.toLongText(),
    'des'.toLongText(),
    'important_notice'.toLongText(),
    'product_tag'.toLongText(),
    'model'.toLongText(),
    'seo'.toLongText(),
    'category'.toLongText(),
    'sku_number'.toLongText(),
    'status'.toInteger(),
  ];

  var add = [
    LaraveRequiredValidation(tableStructure: tableStructure)
        .toValidator(request: requestall())
        .toValidate(customMessage: '"message" => "please fill all data !!!]')
        .validate,
    requestall().code.toStoreVariable(variablename: 'input').close(),
    LaravelSaveData(tablename: tablename)
        .create('input'.toVariable())
        .save()
        .close()
        .toStoreVariable(variablename: 'isDone'),
    Condition(
      trueValue: response200('"message" => "Data submited]').close(),
      falseValue: response401('"message" => "Data not submited]').close(),
    ).oneCheck('isDone'.toVariable()).close()
  ].toFuntions('add', request: true);
  LaravelCreateRestApi(
      path: path,
      tableName: 'products',
      table: LaravelTableCreate('products', tableStructure),
      controller:
          LaravelTableController(tableName: 'products', functionCreate: '''
          $add
          ''', importModel: ['products']),
      model: LaravelModel('products', tableStructure, [])).create();
}

// dynamic createPrice(path) {
//   var tablename = 'products_price';
//   var tableStructure = <String>[
//     'product_price'.toFloat(),
//     'selling_price'.toFloat(),
//     'stock'.toInteger(),
//     'restric_quantity'.toInteger(),
//     'status'.toInteger(),
//   ];

//   var add = [
//     LaraveRequiredValidation(tableStructure: tableStructure)
//         .toValidator(request: requestall())
//         .toValidate(customMessage: '"message" => "please fill all data !!!]')
//         .validate,
//     requestall().code.toStoreVariable(variablename: 'input').close(),
//     LaravelSaveData(tablename: tablename)
//         .create('input'.toVariable())
//         .save()
//         .close()
//         .toStoreVariable(variablename: 'isDone'),
//     Condition(
//       trueValue: response200('["message" => "Data submited"]').close(),
//       falseValue: response401('["message" => "Data not submited"]').close(),
//     ).oneCheck('isDone'.toVariable()).close()
//   ].toFuntions('add', request: true);
//   LaravelCreateRestApi(
//       path: path,
//       tableName: 'Products_Price',
//       table: LaravelTableCreate('Products_Price', tableStructure),
//       controller: LaravelTableController(
//           tableName: 'Products_Price', functionCreate: '''
//           $add
//           ''', importModel: ['Products_Price']),
//       model: LaravelModel('Products_Price', tableStructure, [])).create();
// }

// dynamic createImage(path) {
//   var tablename = 'products_image';
//   var tableStructure = <String>[
//     'product_id'.toInteger(),
//     'image_url'.toLongText(),
//     'status'.toInteger(),
//   ];

//   var add = [
//     LaraveRequiredValidation(tableStructure: tableStructure)
//         .toValidator(request: requestall())
//         .toValidate(customMessage: '["message" => "please fill all data !!!"]')
//         .validate,
//     requestall().code.toStoreVariable(variablename: 'input').close(),
//     LaravelSaveData(tablename: tablename)
//         .create('input'.toVariable())
//         .save()
//         .close()
//         .toStoreVariable(variablename: 'isDone'),
//     Condition(
//       trueValue: response200('["message" => "Data submited"]').close(),
//       falseValue: response401('["message" => "Data not submited"]').close(),
//     ).oneCheck('isDone'.toVariable()).close()
//   ].toFuntions('add', request: true);
//   LaravelCreateRestApi(
//       path: path,
//       tableName: 'Products_Image',
//       table: LaravelTableCreate('Products_Image', tableStructure),
//       controller: LaravelTableController(
//           tableName: 'Products_Image', functionCreate: '''
//           $add
//           ''', importModel: ['Products_Image']),
//       model: LaravelModel('Products_Image', tableStructure, [])).create();
// }

// dynamic createPrice(path) {
//   var tablename = 'products_price';
//   var tableStructure = <String>[
//     'product_price'.toFloat(),
//     'selling_price'.toFloat(),
//     'stock'.toInteger(),
//     'restric_quantity'.toInteger(),
//     'status'.toInteger(),
//   ];

//   var add = [
//     LaraveRequiredValidation(tableStructure: tableStructure)
//         .toValidator(request: requestall())
//         .toValidate(customMessage: '["message" => "please fill all data !!!"]')
//         .validate,
//     requestall().code.toStoreVariable(variablename: 'input').close(),
//     LaravelSaveData(tablename: tablename)
//         .create('input'.toVariable())
//         .save()
//         .close()
//         .toStoreVariable(variablename: 'isDone'),
//     Condition(
//       trueValue: response200('["message" => "Data submited"]').close(),
//       falseValue: response401('["message" => "Data not submited"]').close(),
//     ).oneCheck('isDone'.toVariable()).close()
//   ].toFuntions('add', request: true);
//   LaravelCreateRestApi(
//       path: path,
//       tableName: 'Products_Price',
//       table: LaravelTableCreate('Products_Price', tableStructure),
//       controller: LaravelTableController(
//           tableName: 'Products_Price', functionCreate: '''
//           $add
//           ''', importModel: ['Products_Price']),
//       model: LaravelModel('Products_Price', tableStructure, [])).create();
// }

dynamic createImage(path) {
  var tablename = 'banner';
  var tableStructure = <String>[
    'image_url'.toLongText(),
    'action_type'.toInteger(),
    'action_name'.toInteger(),
    'action_id'.toInteger(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: 'Banner',
      table: LaravelTableCreate('Banner', tableStructure),
      controller:
          LaravelTableController(tableName: 'Banner', functionCreate: '''
          $add
          ''', importModel: ['Banner']),
      model: LaravelModel('Banner', tableStructure, [])).create();
}

dynamic createBannerVertical(path) {
  var tablename = 'banner_Vertical';
  var tableStructure = <String>[
    'image_url'.toLongText(),
    'action_type'.toInteger(),
    'action_name'.toInteger(),
    'action_id'.toInteger(),
    'vertical_id'.toInteger(),
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
  LaravelCreateRestApi(
      path: path,
      tableName: 'BannerVertical',
      table: LaravelTableCreate('BannerVertical', tableStructure),
      controller: LaravelTableController(
          tableName: 'BannerVertical', functionCreate: '''
          $add
          ''', importModel: ['BannerVertical']),
      model: LaravelModel('BannerVertical', tableStructure, [])).create();
}
