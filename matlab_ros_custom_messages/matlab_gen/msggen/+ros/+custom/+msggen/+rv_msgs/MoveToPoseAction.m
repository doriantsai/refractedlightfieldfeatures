classdef MoveToPoseAction < ros.Message
    %MoveToPoseAction MATLAB implementation of rv_msgs/MoveToPoseAction
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/MoveToPoseAction' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '84f118359885f2ca386264885c9198b9' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        RvMsgsMoveToPoseActionFeedbackClass = ros.msg.internal.MessageFactory.getClassForType('rv_msgs/MoveToPoseActionFeedback') % Dispatch to MATLAB class for message type rv_msgs/MoveToPoseActionFeedback
        RvMsgsMoveToPoseActionGoalClass = ros.msg.internal.MessageFactory.getClassForType('rv_msgs/MoveToPoseActionGoal') % Dispatch to MATLAB class for message type rv_msgs/MoveToPoseActionGoal
        RvMsgsMoveToPoseActionResultClass = ros.msg.internal.MessageFactory.getClassForType('rv_msgs/MoveToPoseActionResult') % Dispatch to MATLAB class for message type rv_msgs/MoveToPoseActionResult
    end
    
    properties (Dependent)
        ActionGoal
        ActionResult
        ActionFeedback
    end
    
    properties (Access = protected)
        Cache = struct('ActionGoal', [], 'ActionResult', [], 'ActionFeedback', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'ActionFeedback', 'ActionGoal', 'ActionResult'} % List of non-constant message properties
        ROSPropertyList = {'action_feedback', 'action_goal', 'action_result'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = MoveToPoseAction(msg)
            %MoveToPoseAction Construct the message object MoveToPoseAction
            import com.mathworks.toolbox.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('ros:mlros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('ros:mlros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('ros:mlros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function actiongoal = get.ActionGoal(obj)
            %get.ActionGoal Get the value for property ActionGoal
            if isempty(obj.Cache.ActionGoal)
                obj.Cache.ActionGoal = feval(obj.RvMsgsMoveToPoseActionGoalClass, obj.JavaMessage.getActionGoal);
            end
            actiongoal = obj.Cache.ActionGoal;
        end
        
        function set.ActionGoal(obj, actiongoal)
            %set.ActionGoal Set the value for property ActionGoal
            validateattributes(actiongoal, {obj.RvMsgsMoveToPoseActionGoalClass}, {'nonempty', 'scalar'}, 'MoveToPoseAction', 'ActionGoal');
            
            obj.JavaMessage.setActionGoal(actiongoal.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.ActionGoal)
                obj.Cache.ActionGoal.setJavaObject(actiongoal.getJavaObject);
            end
        end
        
        function actionresult = get.ActionResult(obj)
            %get.ActionResult Get the value for property ActionResult
            if isempty(obj.Cache.ActionResult)
                obj.Cache.ActionResult = feval(obj.RvMsgsMoveToPoseActionResultClass, obj.JavaMessage.getActionResult);
            end
            actionresult = obj.Cache.ActionResult;
        end
        
        function set.ActionResult(obj, actionresult)
            %set.ActionResult Set the value for property ActionResult
            validateattributes(actionresult, {obj.RvMsgsMoveToPoseActionResultClass}, {'nonempty', 'scalar'}, 'MoveToPoseAction', 'ActionResult');
            
            obj.JavaMessage.setActionResult(actionresult.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.ActionResult)
                obj.Cache.ActionResult.setJavaObject(actionresult.getJavaObject);
            end
        end
        
        function actionfeedback = get.ActionFeedback(obj)
            %get.ActionFeedback Get the value for property ActionFeedback
            if isempty(obj.Cache.ActionFeedback)
                obj.Cache.ActionFeedback = feval(obj.RvMsgsMoveToPoseActionFeedbackClass, obj.JavaMessage.getActionFeedback);
            end
            actionfeedback = obj.Cache.ActionFeedback;
        end
        
        function set.ActionFeedback(obj, actionfeedback)
            %set.ActionFeedback Set the value for property ActionFeedback
            validateattributes(actionfeedback, {obj.RvMsgsMoveToPoseActionFeedbackClass}, {'nonempty', 'scalar'}, 'MoveToPoseAction', 'ActionFeedback');
            
            obj.JavaMessage.setActionFeedback(actionfeedback.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.ActionFeedback)
                obj.Cache.ActionFeedback.setJavaObject(actionfeedback.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.ActionGoal = [];
            obj.Cache.ActionResult = [];
            obj.Cache.ActionFeedback = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.ActionGoal = copy(obj.ActionGoal);
            cpObj.ActionResult = copy(obj.ActionResult);
            cpObj.ActionFeedback = copy(obj.ActionFeedback);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.ActionGoal = feval([obj.RvMsgsMoveToPoseActionGoalClass '.loadobj'], strObj.ActionGoal);
            obj.ActionResult = feval([obj.RvMsgsMoveToPoseActionResultClass '.loadobj'], strObj.ActionResult);
            obj.ActionFeedback = feval([obj.RvMsgsMoveToPoseActionFeedbackClass '.loadobj'], strObj.ActionFeedback);
        end
    end
    
    methods (Access = ?ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.ActionGoal = saveobj(obj.ActionGoal);
            strObj.ActionResult = saveobj(obj.ActionResult);
            strObj.ActionFeedback = saveobj(obj.ActionFeedback);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.MoveToPoseAction.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.MoveToPoseAction;
            obj.reload(strObj);
        end
    end
end
