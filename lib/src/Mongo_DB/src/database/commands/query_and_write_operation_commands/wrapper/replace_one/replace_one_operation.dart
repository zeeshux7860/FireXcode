import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show DbCollection;
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/return_classes/abstract_write_result.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/return_classes/write_result.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/update_operation/update_operation.dart';

import 'replace_one_options.dart';
import 'replace_one_statement.dart';

class ReplaceOneOperation extends UpdateOperation {
  ReplaceOneStatement replaceOneStatement;

  ReplaceOneOperation(
      DbCollection collection, ReplaceOneStatement replaceOneStatement,
      {ReplaceOneOptions replaceOneOptions, Map<String, Object> rawOptions})
      : super(
          collection,
          [replaceOneStatement],
          ordered: false,
          updateOptions: replaceOneOptions,
          rawOptions: rawOptions,
        ) {
    if (replaceOneStatement == null) {
      throw ArgumentError('Replace Statement needed in replaceOne() method');
    }
  }

  Future<WriteResult> executeDocument() async {
    var ret = await super.execute();
    return WriteResult.fromMap(WriteCommandType.update, ret);
  }
}
