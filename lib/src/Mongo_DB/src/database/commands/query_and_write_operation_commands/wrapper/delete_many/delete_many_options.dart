import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show WriteConcern;
import 'package:firexcode/src/Mongo_DB/src/database/commands/query_and_write_operation_commands/delete_operation/delete_options.dart';

class DeleteManyOptions extends DeleteOptions {
  DeleteManyOptions({WriteConcern writeConcern, String comment})
      : super(writeConcern: writeConcern, comment: comment);
}
