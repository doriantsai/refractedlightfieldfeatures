package rv_msgs;

public interface GraspObjectFeedback extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/GraspObjectFeedback";
  static final java.lang.String _DEFINITION = "# Feedback definition\nint8 status";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  byte getStatus();
  void setStatus(byte value);
}
