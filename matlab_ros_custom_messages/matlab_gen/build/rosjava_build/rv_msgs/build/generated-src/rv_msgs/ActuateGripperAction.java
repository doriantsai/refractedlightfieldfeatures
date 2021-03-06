package rv_msgs;

public interface ActuateGripperAction extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/ActuateGripperAction";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\nrv_msgs/ActuateGripperActionGoal action_goal\nrv_msgs/ActuateGripperActionResult action_result\nrv_msgs/ActuateGripperActionFeedback action_feedback\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  rv_msgs.ActuateGripperActionGoal getActionGoal();
  void setActionGoal(rv_msgs.ActuateGripperActionGoal value);
  rv_msgs.ActuateGripperActionResult getActionResult();
  void setActionResult(rv_msgs.ActuateGripperActionResult value);
  rv_msgs.ActuateGripperActionFeedback getActionFeedback();
  void setActionFeedback(rv_msgs.ActuateGripperActionFeedback value);
}
