import 'package:logtest/gen/com/tencent/mars/xlog/_package.dart' as mars;
import 'package:jni/jni.dart' as jni;

class LogImpl implements mars.$Log_LogImpImpl {
  mars.Xlog _xlog;
  late final mars.$Log_LogImpImpl logImpl;

  LogImpl(this._xlog) {
    logImpl = mars.$Log_LogImpImpl(
      logV: logV,
      logI: logI,
      logD: logD,
      logW: logW,
      logE: logE,
      logF: logF,
      getLogLevel: getLogLevel,
      setAppenderMode: setAppenderMode,
      openLogInstance: openLogInstance,
      getXlogInstance: getXlogInstance,
      releaseXlogInstance: releaseXlogInstance,
      appenderOpen: appenderOpen,
      appenderClose: appenderClose,
      appenderFlush: appenderFlush,
      setConsoleLogOpen: setConsoleLogOpen,
      setMaxFileSize: setMaxFileSize,
      setMaxAliveTime: setMaxAliveTime,
    );
  }

  @override
  void appenderClose() {
    _xlog.appenderClose();
  }

  @override
  void appenderFlush(int j, bool z) {
    _xlog.appenderFlush(j, z);
  }

  @override
  void appenderOpen(int i, int i1, jni.JString string, jni.JString string1,
      jni.JString string2, int i2) {
    _xlog.appenderOpen(i, i1, string, string1, string2, i2);
  }

  @override
  int getLogLevel(int j) {
    return _xlog.getLogLevel(j);
  }

  @override
  int getXlogInstance(jni.JString string) {
    return _xlog.getXlogInstance(string);
  }

  @override
  void logD(int j, jni.JString string, jni.JString string1, jni.JString string2,
      int i, int i1, int j1, int j2, jni.JString string3) {
    _xlog.logD(j, string, string1, string2, i, i1, j1, j2, string3);
  }

  @override
  void logE(int j, jni.JString string, jni.JString string1, jni.JString string2,
      int i, int i1, int j1, int j2, jni.JString string3) {
    _xlog.logE(j, string, string1, string2, i, i1, j1, j2, string3);
  }

  @override
  void logF(int j, jni.JString string, jni.JString string1, jni.JString string2,
      int i, int i1, int j1, int j2, jni.JString string3) {
    _xlog.logF(j, string, string1, string2, i, i1, j1, j2, string3);
  }

  @override
  void logI(int j, jni.JString string, jni.JString string1, jni.JString string2,
      int i, int i1, int j1, int j2, jni.JString string3) {
    _xlog.logI(j, string, string1, string2, i, i1, j1, j2, string3);
  }

  @override
  void logV(int j, jni.JString string, jni.JString string1, jni.JString string2,
      int i, int i1, int j1, int j2, jni.JString string3) {
    _xlog.logV(j, string, string1, string2, i, i1, j1, j2, string3);
  }

  @override
  void logW(int j, jni.JString string, jni.JString string1, jni.JString string2,
      int i, int i1, int j1, int j2, jni.JString string3) {
    _xlog.logW(j, string, string1, string2, i, i1, j1, j2, string3);
  }

  @override
  int openLogInstance(int i, int i1, jni.JString string, jni.JString string1,
      jni.JString string2, int i2) {
    return _xlog.openLogInstance(i, i1, string, string1, string2, i2);
  }

  @override
  void releaseXlogInstance(jni.JString string) {
    _xlog.releaseXlogInstance(string);
  }

  @override
  void setAppenderMode(int j, int i) {
    _xlog.setAppenderMode(j, i);
  }

  @override
  void setConsoleLogOpen(int j, bool z) {
    _xlog.setConsoleLogOpen(j, z);
  }

  @override
  void setMaxAliveTime(int j, int j1) {
    _xlog.setMaxAliveTime(j, j1);
  }

  @override
  void setMaxFileSize(int j, int j1) {
    _xlog.setMaxFileSize(j, j1);
  }
}
