package rv_msgs;

public interface AskQuestionAction extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "rv_msgs/AskQuestionAction";
  static final java.lang.String _DEFINITION = "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\nrv_msgs/AskQuestionActionGoal action_goal\nrv_msgs/AskQuestionActionResult action_result\nrv_msgs/AskQuestionActionFeedback action_feedback\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = true;
  rv_msgs.AskQuestionActionGoal getActionGoal();
  void setActionGoal(rv_msgs.AskQuestionActionGoal value);
  rv_msgs.AskQuestionActionResult getActionResult();
  void setActionResult(rv_msgs.AskQuestionActionResult value);
  rv_msgs.AskQuestionActionFeedback getActionFeedback();
  void setActionFeedback(rv_msgs.AskQuestionActionFeedback value);
}
