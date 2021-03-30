import 'package:firexcode/src/Mongo_DB/src/database/utils/map_keys.dart';

import 'write_error.dart';

class BulkWriteError extends WriteError {
  int index;
  int operationInputIndex;

  BulkWriteError.fromMap(Map<String, Object> bulkWriteErrorMap)
      : index = bulkWriteErrorMap[keyIndex],
        operationInputIndex = bulkWriteErrorMap[keyOperationInputIndex],
        super.fromMap(bulkWriteErrorMap);
}
