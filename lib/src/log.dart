import 'dart:ffi';

import 'package:logtest/gen/com/tencent/mars/xlog/_package.dart' as mars;
import 'package:jni/jni.dart' as jni;
import 'package:logtest/src/log_impl.dart';

class Log {
  static void initLog() {
    mars.Log.setLogImp(mars.Log_LogImp.implement(LogImpl(mars.Xlog()).logImpl));
  }
}
