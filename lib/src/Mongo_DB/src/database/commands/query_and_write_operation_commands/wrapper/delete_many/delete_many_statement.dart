import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/delete_operation/delete_statement.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/parameters/collation_options.dart';

class DeleteManyStatement extends DeleteStatement {
  DeleteManyStatement(Map<String, Object> filter,
      {CollationOptions collation,
      String hint,
      Map<String, Object> hintDocument})
      : super(filter,
            collation: collation,
            hint: hint,
            hintDocument: hintDocument,
            limit: 0);
}
