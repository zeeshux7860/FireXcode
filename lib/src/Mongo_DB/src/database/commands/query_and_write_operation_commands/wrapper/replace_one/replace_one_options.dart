import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show WriteConcern;
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/update_operation/update_options.dart';

class ReplaceOneOptions extends UpdateOptions {
  ReplaceOneOptions(
      {WriteConcern writeConcern,
      bool bypassDocumentValidation,
      String comment})
      : super(
            writeConcern: writeConcern,
            bypassDocumentValidation: bypassDocumentValidation,
            comment: comment);
}
