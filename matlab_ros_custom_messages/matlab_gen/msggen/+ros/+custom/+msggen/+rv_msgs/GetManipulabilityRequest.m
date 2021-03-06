classdef GetManipulabilityRequest < ros.Message
    %GetManipulabilityRequest MATLAB implementation of rv_msgs/GetManipulabilityRequest
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/GetManipulabilityRequest' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'ade63278c403f74f66dd7d99a52f2a61' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPoseStampedClass = ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/PoseStamped') % Dispatch to MATLAB class for message type geometry_msgs/PoseStamped
    end
    
    properties (Dependent)
        StampedPose
        Joints
    end
    
    properties (Access = protected)
        Cache = struct('StampedPose', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Joints', 'StampedPose'} % List of non-constant message properties
        ROSPropertyList = {'joints', 'stamped_pose'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GetManipulabilityRequest(msg)
            %GetManipulabilityRequest Construct the message object GetManipulabilityRequest
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
        
        function stampedpose = get.StampedPose(obj)
            %get.StampedPose Get the value for property StampedPose
            if isempty(obj.Cache.StampedPose)
                obj.Cache.StampedPose = feval(obj.GeometryMsgsPoseStampedClass, obj.JavaMessage.getStampedPose);
            end
            stampedpose = obj.Cache.StampedPose;
        end
        
        function set.StampedPose(obj, stampedpose)
            %set.StampedPose Set the value for property StampedPose
            validateattributes(stampedpose, {obj.GeometryMsgsPoseStampedClass}, {'nonempty', 'scalar'}, 'GetManipulabilityRequest', 'StampedPose');
            
            obj.JavaMessage.setStampedPose(stampedpose.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.StampedPose)
                obj.Cache.StampedPose.setJavaObject(stampedpose.getJavaObject);
            end
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
            
            validateattributes(joints, {'numeric'}, {'vector'}, 'GetManipulabilityRequest', 'Joints');
            
            javaArray = obj.JavaMessage.getJoints;
            array = obj.writeJavaArray(joints, javaArray, 'double');
            obj.JavaMessage.setJoints(array);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.StampedPose = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Joints = obj.Joints;
            
            % Recursively copy compound properties
            cpObj.StampedPose = copy(obj.StampedPose);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Joints = strObj.Joints;
            obj.StampedPose = feval([obj.GeometryMsgsPoseStampedClass '.loadobj'], strObj.StampedPose);
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
            
            strObj.Joints = obj.Joints;
            strObj.StampedPose = saveobj(obj.StampedPose);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.GetManipulabilityRequest.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.GetManipulabilityRequest;
            obj.reload(strObj);
        end
    end
end
