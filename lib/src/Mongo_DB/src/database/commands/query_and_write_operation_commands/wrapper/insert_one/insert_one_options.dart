import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show WriteConcern;
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/insert_operation/insert_options.dart';

class InsertOneOptions extends InsertOptions {
  InsertOneOptions({WriteConcern writeConcern, bool bypassDocumentValidation})
      : super(
            writeConcern: writeConcern,
            bypassDocumentValidation: bypassDocumentValidation);
}
