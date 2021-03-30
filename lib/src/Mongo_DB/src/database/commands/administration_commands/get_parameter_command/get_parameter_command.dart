import 'package:firexcode/src/Mongo_DB/mongo_dart.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/base/db_admin_command_operation.dart';
import 'get_parameter_options.dart';
import 'package:firexcode/src/Mongo_DB/src/database/utils/map_keys.dart';

class GetParameterCommand extends DbAdminCommandOperation {
  GetParameterCommand(Db db, String parameterName,
      {GetParameterOptions getParameterOptions, Map<String, Object> rawOptions})
      : super(db, <String, Object>{
          keyGetParameter: 1,
          parameterName: 1
        }, options: <String, Object>{
          ...?getParameterOptions?.options,
          ...?rawOptions
        });
}
