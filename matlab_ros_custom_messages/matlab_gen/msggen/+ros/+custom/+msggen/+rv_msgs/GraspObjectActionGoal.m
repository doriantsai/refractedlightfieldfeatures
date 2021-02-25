classdef GraspObjectActionGoal < ros.Message
    %GraspObjectActionGoal MATLAB implementation of rv_msgs/GraspObjectActionGoal
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/GraspObjectActionGoal' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '48d8974cc228c2ec45150c838ece80d6' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        ActionlibMsgsGoalIDClass = ros.msg.internal.MessageFactory.getClassForType('actionlib_msgs/GoalID') % Dispatch to MATLAB class for message type actionlib_msgs/GoalID
        RvMsgsGraspObjectGoalClass = ros.msg.internal.MessageFactory.getClassForType('rv_msgs/GraspObjectGoal') % Dispatch to MATLAB class for message type rv_msgs/GraspObjectGoal
        StdMsgsHeaderClass = ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        GoalId
        Goal
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'GoalId', [], 'Goal', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Goal', 'GoalId', 'Header'} % List of non-constant message properties
        ROSPropertyList = {'goal', 'goal_id', 'header'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GraspObjectActionGoal(msg)
            %GraspObjectActionGoal Construct the message object GraspObjectActionGoal
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
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'GraspObjectActionGoal', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function goalid = get.GoalId(obj)
            %get.GoalId Get the value for property GoalId
            if isempty(obj.Cache.GoalId)
                obj.Cache.GoalId = feval(obj.ActionlibMsgsGoalIDClass, obj.JavaMessage.getGoalId);
            end
            goalid = obj.Cache.GoalId;
        end
        
        function set.GoalId(obj, goalid)
            %set.GoalId Set the value for property GoalId
            validateattributes(goalid, {obj.ActionlibMsgsGoalIDClass}, {'nonempty', 'scalar'}, 'GraspObjectActionGoal', 'GoalId');
            
            obj.JavaMessage.setGoalId(goalid.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.GoalId)
                obj.Cache.GoalId.setJavaObject(goalid.getJavaObject);
            end
        end
        
        function goal = get.Goal(obj)
            %get.Goal Get the value for property Goal
            if isempty(obj.Cache.Goal)
                obj.Cache.Goal = feval(obj.RvMsgsGraspObjectGoalClass, obj.JavaMessage.getGoal);
            end
            goal = obj.Cache.Goal;
        end
        
        function set.Goal(obj, goal)
            %set.Goal Set the value for property Goal
            validateattributes(goal, {obj.RvMsgsGraspObjectGoalClass}, {'nonempty', 'scalar'}, 'GraspObjectActionGoal', 'Goal');
            
            obj.JavaMessage.setGoal(goal.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Goal)
                obj.Cache.Goal.setJavaObject(goal.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.GoalId = [];
            obj.Cache.Goal = [];
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
            cpObj.Header = copy(obj.Header);
            cpObj.GoalId = copy(obj.GoalId);
            cpObj.Goal = copy(obj.Goal);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.GoalId = feval([obj.ActionlibMsgsGoalIDClass '.loadobj'], strObj.GoalId);
            obj.Goal = feval([obj.RvMsgsGraspObjectGoalClass '.loadobj'], strObj.Goal);
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
            
            strObj.Header = saveobj(obj.Header);
            strObj.GoalId = saveobj(obj.GoalId);
            strObj.Goal = saveobj(obj.Goal);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.GraspObjectActionGoal.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.GraspObjectActionGoal;
            obj.reload(strObj);
        end
    end
end
