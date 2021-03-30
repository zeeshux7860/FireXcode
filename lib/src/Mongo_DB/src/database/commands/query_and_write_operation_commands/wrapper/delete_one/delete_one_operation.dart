import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show DbCollection;
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/delete_operation/delete_operation.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/return_classes/abstract_write_result.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/return_classes/write_result.dart';

import 'delete_one_options.dart';
import 'delete_one_statement.dart';

class DeleteOneOperation extends DeleteOperation {
  DeleteOneStatement deleteRequest;

  DeleteOneOperation(DbCollection collection, DeleteOneStatement deleteRequest,
      {DeleteOneOptions deleteOneOptions, Map<String, Object> rawOptions})
      : super(
          collection,
          [deleteRequest],
          deleteOptions: deleteOneOptions,
          rawOptions: rawOptions,
        ) {
    if (deleteRequest == null) {
      throw ArgumentError('Delete Request required in deleteOne() method');
    }
  }

  Future<WriteResult> executeDocument() async {
    var ret = await super.execute();
    return WriteResult.fromMap(WriteCommandType.delete, ret);
  }
}
