import 'package:logging/logging.dart';

Logger logStep = new Logger('step');
Logger log = new Logger('default');

void configLog(){
  hierarchicalLoggingEnabled = true;
  Logger.root.level = Level.OFF;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.loggerName}-${rec.level.name}: ${rec.time}: ${rec.message}');
    if(rec.error != null &&
        rec.stackTrace != null) {
      print('${rec.error}: ${rec.stackTrace}');
    }
  });

  log.level = Level.OFF;
//  logStep.level = Level.ALL;
}