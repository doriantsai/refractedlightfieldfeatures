package rv_msgs;

public interface MoveToPoseResult extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/MoveToPoseResult";
  static final java.lang.String _DEFINITION = "# Result definition\nint8 result\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  byte getResult();
  void setResult(byte value);
}
