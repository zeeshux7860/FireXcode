import 'package:firexcode/src/Mongo_DB/mongo_dart.dart' show Connection, Db;
import 'package:firexcode/src/Mongo_DB/src/database/message/mongo_modern_message.dart';
import 'package:firexcode/src/Mongo_DB/src/database/utils/map_keys.dart';

import 'operation_base.dart';

class DbAdminCommandOperation extends OperationBase {
  Db db;
  Map<String, Object> command;
  //String namespace;

  DbAdminCommandOperation(this.db, this.command,
      {Map<String, Object> options, Connection connection})
      : super(options, connection: connection);

  Map<String, Object> $buildCommand() => command;

  @override
  Future<Map<String, Object>> execute() async {
    final db = this.db;
    var command = <String, dynamic>{
      ...$buildCommand(),
      keyDatabaseName: 'admin'
    };
    options.removeWhere((key, value) => command.containsKey(key));

    command.addAll(options);

    var modernMessage = MongoModernMessage(command);
    return db.executeModernMessage(modernMessage, connection: connection);
  }
}
