import 'package:firexcode/src/Mongo_DB/mongo_dart.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/base/db_admin_command_operation.dart';
import 'get_all_parameters_options.dart';
import 'package:firexcode/src/Mongo_DB/src/database/utils/map_keys.dart';

class GetAllParametersCommand extends DbAdminCommandOperation {
  GetAllParametersCommand(Db db,
      {GetAllParametersOptions getAllParametersOptions,
      Map<String, Object> rawOptions})
      : super(db, <String, Object>{
          keyGetParameter: '*'
        }, options: <String, Object>{
          ...?getAllParametersOptions?.options,
          ...?rawOptions
        });
}
