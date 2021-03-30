import 'package:firexcode/xMongoose.dart';

main(){
  var db = Db('mongodb://127.0.0.1/test_insert');
  db.open();
}