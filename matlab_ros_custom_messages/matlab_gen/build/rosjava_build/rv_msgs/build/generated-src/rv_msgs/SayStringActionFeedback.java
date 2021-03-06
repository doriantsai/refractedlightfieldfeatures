package rv_msgs;

public interface SayStringActionFeedback extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/SayStringActionFeedback";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\nHeader header\nactionlib_msgs/GoalStatus status\nrv_msgs/SayStringFeedback feedback\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  actionlib_msgs.GoalStatus getStatus();
  void setStatus(actionlib_msgs.GoalStatus value);
  rv_msgs.SayStringFeedback getFeedback();
  void setFeedback(rv_msgs.SayStringFeedback value);
}
