classdef GetLocationPoseResponse < ros.Message
    %GetLocationPoseResponse MATLAB implementation of rv_msgs/GetLocationPoseResponse
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/GetLocationPoseResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'c39555b1598627ab55efc18843b21c72' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPoseClass = ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Pose') % Dispatch to MATLAB class for message type geometry_msgs/Pose
    end
    
    properties (Dependent)
        LocationPose
    end
    
    properties (Access = protected)
        Cache = struct('LocationPose', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'LocationPose'} % List of non-constant message properties
        ROSPropertyList = {'location_pose'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GetLocationPoseResponse(msg)
            %GetLocationPoseResponse Construct the message object GetLocationPoseResponse
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
        
        function locationpose = get.LocationPose(obj)
            %get.LocationPose Get the value for property LocationPose
            if isempty(obj.Cache.LocationPose)
                obj.Cache.LocationPose = feval(obj.GeometryMsgsPoseClass, obj.JavaMessage.getLocationPose);
            end
            locationpose = obj.Cache.LocationPose;
        end
        
        function set.LocationPose(obj, locationpose)
            %set.LocationPose Set the value for property LocationPose
            validateattributes(locationpose, {obj.GeometryMsgsPoseClass}, {'nonempty', 'scalar'}, 'GetLocationPoseResponse', 'LocationPose');
            
            obj.JavaMessage.setLocationPose(locationpose.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.LocationPose)
                obj.Cache.LocationPose.setJavaObject(locationpose.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.LocationPose = [];
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
            cpObj.LocationPose = copy(obj.LocationPose);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.LocationPose = feval([obj.GeometryMsgsPoseClass '.loadobj'], strObj.LocationPose);
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
            
            strObj.LocationPose = saveobj(obj.LocationPose);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.GetLocationPoseResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.GetLocationPoseResponse;
            obj.reload(strObj);
        end
    end
end