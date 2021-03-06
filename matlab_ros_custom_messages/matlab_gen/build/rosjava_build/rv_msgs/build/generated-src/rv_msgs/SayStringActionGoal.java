package rv_msgs;

public interface SayStringActionGoal extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/SayStringActionGoal";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\nHeader header\nactionlib_msgs/GoalID goal_id\nrv_msgs/SayStringGoal goal\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  actionlib_msgs.GoalID getGoalId();
  void setGoalId(actionlib_msgs.GoalID value);
  rv_msgs.SayStringGoal getGoal();
  void setGoal(rv_msgs.SayStringGoal value);
}
