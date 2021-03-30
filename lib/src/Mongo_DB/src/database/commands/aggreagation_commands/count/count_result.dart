import 'package:firexcode/src/Mongo_DB/src/database/commands/mixin/basic_result.dart';
import 'package:firexcode/src/Mongo_DB/src/database/commands/mixin/timing_result.dart';
import 'package:firexcode/src/Mongo_DB/src/database/utils/map_keys.dart';

class CountResult with BasicResult, TimingResult {
  CountResult(Map<String, Object> document) {
    extractBasic(document);
    extractTiming(document);
    count = document[keyN] ?? 0;
  }
  int count;
}
