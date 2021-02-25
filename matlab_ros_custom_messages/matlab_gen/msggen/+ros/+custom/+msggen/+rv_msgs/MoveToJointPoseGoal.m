classdef MoveToJointPoseGoal < ros.Message
    %MoveToJointPoseGoal MATLAB implementation of rv_msgs/MoveToJointPoseGoal
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/MoveToJointPoseGoal' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '27ce512d000009a394d86eb148006e72' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Speed
        Joints
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Joints', 'Speed'} % List of non-constant message properties
        ROSPropertyList = {'joints', 'speed'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = MoveToJointPoseGoal(msg)
            %MoveToJointPoseGoal Construct the message object MoveToJointPoseGoal
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
        
        function speed = get.Speed(obj)
            %get.Speed Get the value for property Speed
            speed = single(obj.JavaMessage.getSpeed);
        end
        
        function set.Speed(obj, speed)
            %set.Speed Set the value for property Speed
            validateattributes(speed, {'numeric'}, {'nonempty', 'scalar'}, 'MoveToJointPoseGoal', 'Speed');
            
            obj.JavaMessage.setSpeed(speed);
        end
        
        function joints = get.Joints(obj)
            %get.Joints Get the value for property Joints
            javaArray = obj.JavaMessage.getJoints;
            array = obj.readJavaArray(javaArray, 'double');
            joints = double(array);
        end
        
        function set.Joints(obj, joints)
            %set.Joints Set the value for property Joints
            if ~isvector(joints) && isempty(joints)
                % Allow empty [] input
                joints = double.empty(0,1);
            end
            
            validateattributes(joints, {'numeric'}, {'vector'}, 'MoveToJointPoseGoal', 'Joints');
            
            javaArray = obj.JavaMessage.getJoints;
            array = obj.writeJavaArray(joints, javaArray, 'double');
            obj.JavaMessage.setJoints(array);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Speed = obj.Speed;
            cpObj.Joints = obj.Joints;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Speed = strObj.Speed;
            obj.Joints = strObj.Joints;
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
            
            strObj.Speed = obj.Speed;
            strObj.Joints = obj.Joints;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.MoveToJointPoseGoal.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.MoveToJointPoseGoal;
            obj.reload(strObj);
        end
    end
end
