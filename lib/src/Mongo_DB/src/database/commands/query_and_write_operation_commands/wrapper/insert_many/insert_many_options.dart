import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show WriteConcern;
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/insert_operation/insert_options.dart';

class InsertManyOptions extends InsertOptions {
  InsertManyOptions(
      {WriteConcern writeConcern, bool ordered, bool bypassDocumentValidation})
      : super(
            writeConcern: writeConcern,
            ordered: ordered,
            bypassDocumentValidation: bypassDocumentValidation);
}
