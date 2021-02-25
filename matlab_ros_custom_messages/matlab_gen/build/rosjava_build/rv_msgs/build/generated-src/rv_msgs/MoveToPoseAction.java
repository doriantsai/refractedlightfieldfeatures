package rv_msgs;

public interface MoveToPoseAction extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/MoveToPoseAction";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\nrv_msgs/MoveToPoseActionGoal action_goal\nrv_msgs/MoveToPoseActionResult action_result\nrv_msgs/MoveToPoseActionFeedback action_feedback\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  rv_msgs.MoveToPoseActionGoal getActionGoal();
  void setActionGoal(rv_msgs.MoveToPoseActionGoal value);
  rv_msgs.MoveToPoseActionResult getActionResult();
  void setActionResult(rv_msgs.MoveToPoseActionResult value);
  rv_msgs.MoveToPoseActionFeedback getActionFeedback();
  void setActionFeedback(rv_msgs.MoveToPoseActionFeedback value);
}
