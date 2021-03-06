package rv_msgs;

public interface ListenActionFeedback extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/ListenActionFeedback";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\nHeader header\nactionlib_msgs/GoalStatus status\nrv_msgs/ListenFeedback feedback\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  actionlib_msgs.GoalStatus getStatus();
  void setStatus(actionlib_msgs.GoalStatus value);
  rv_msgs.ListenFeedback getFeedback();
  void setFeedback(rv_msgs.ListenFeedback value);
}
