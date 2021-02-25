classdef Detection < ros.Message
    %Detection MATLAB implementation of rv_msgs/Detection
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/Detection' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '90bf44c40f6c2e2d3d663f7106ca3361' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPoseStampedClass = ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/PoseStamped') % Dispatch to MATLAB class for message type geometry_msgs/PoseStamped
        SensorMsgsImageClass = ros.msg.internal.MessageFactory.getClassForType('sensor_msgs/Image') % Dispatch to MATLAB class for message type sensor_msgs/Image
    end
    
    properties (Dependent)
        ClassLabel
        XLeft
        YTop
        Width
        Height
        CroppedRgb
        CroppedDepth
        CroppedMask
        GraspPose
        GraspWidth
        GraspQuality
    end
    
    properties (Access = protected)
        Cache = struct('CroppedRgb', [], 'CroppedDepth', [], 'CroppedMask', [], 'GraspPose', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'ClassLabel', 'CroppedDepth', 'CroppedMask', 'CroppedRgb', 'GraspPose', 'GraspQuality', 'GraspWidth', 'Height', 'Width', 'XLeft', 'YTop'} % List of non-constant message properties
        ROSPropertyList = {'class_label', 'cropped_depth', 'cropped_mask', 'cropped_rgb', 'grasp_pose', 'grasp_quality', 'grasp_width', 'height', 'width', 'x_left', 'y_top'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Detection(msg)
            %Detection Construct the message object Detection
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
        
        function classlabel = get.ClassLabel(obj)
            %get.ClassLabel Get the value for property ClassLabel
            classlabel = char(obj.JavaMessage.getClassLabel);
        end
        
        function set.ClassLabel(obj, classlabel)
            %set.ClassLabel Set the value for property ClassLabel
            classlabel = convertStringsToChars(classlabel);
            
            validateattributes(classlabel, {'char', 'string'}, {}, 'Detection', 'ClassLabel');
            
            obj.JavaMessage.setClassLabel(classlabel);
        end
        
        function xleft = get.XLeft(obj)
            %get.XLeft Get the value for property XLeft
            xleft = typecast(int16(obj.JavaMessage.getXLeft), 'uint16');
        end
        
        function set.XLeft(obj, xleft)
            %set.XLeft Set the value for property XLeft
            validateattributes(xleft, {'numeric'}, {'nonempty', 'scalar'}, 'Detection', 'XLeft');
            
            obj.JavaMessage.setXLeft(xleft);
        end
        
        function ytop = get.YTop(obj)
            %get.YTop Get the value for property YTop
            ytop = typecast(int16(obj.JavaMessage.getYTop), 'uint16');
        end
        
        function set.YTop(obj, ytop)
            %set.YTop Set the value for property YTop
            validateattributes(ytop, {'numeric'}, {'nonempty', 'scalar'}, 'Detection', 'YTop');
            
            obj.JavaMessage.setYTop(ytop);
        end
        
        function width = get.Width(obj)
            %get.Width Get the value for property Width
            width = typecast(int16(obj.JavaMessage.getWidth), 'uint16');
        end
        
        function set.Width(obj, width)
            %set.Width Set the value for property Width
            validateattributes(width, {'numeric'}, {'nonempty', 'scalar'}, 'Detection', 'Width');
            
            obj.JavaMessage.setWidth(width);
        end
        
        function height = get.Height(obj)
            %get.Height Get the value for property Height
            height = typecast(int16(obj.JavaMessage.getHeight), 'uint16');
        end
        
        function set.Height(obj, height)
            %set.Height Set the value for property Height
            validateattributes(height, {'numeric'}, {'nonempty', 'scalar'}, 'Detection', 'Height');
            
            obj.JavaMessage.setHeight(height);
        end
        
        function croppedrgb = get.CroppedRgb(obj)
            %get.CroppedRgb Get the value for property CroppedRgb
            if isempty(obj.Cache.CroppedRgb)
                obj.Cache.CroppedRgb = feval(obj.SensorMsgsImageClass, obj.JavaMessage.getCroppedRgb);
            end
            croppedrgb = obj.Cache.CroppedRgb;
        end
        
        function set.CroppedRgb(obj, croppedrgb)
            %set.CroppedRgb Set the value for property CroppedRgb
            validateattributes(croppedrgb, {obj.SensorMsgsImageClass}, {'nonempty', 'scalar'}, 'Detection', 'CroppedRgb');
            
            obj.JavaMessage.setCroppedRgb(croppedrgb.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.CroppedRgb)
                obj.Cache.CroppedRgb.setJavaObject(croppedrgb.getJavaObject);
            end
        end
        
        function croppeddepth = get.CroppedDepth(obj)
            %get.CroppedDepth Get the value for property CroppedDepth
            if isempty(obj.Cache.CroppedDepth)
                obj.Cache.CroppedDepth = feval(obj.SensorMsgsImageClass, obj.JavaMessage.getCroppedDepth);
            end
            croppeddepth = obj.Cache.CroppedDepth;
        end
        
        function set.CroppedDepth(obj, croppeddepth)
            %set.CroppedDepth Set the value for property CroppedDepth
            validateattributes(croppeddepth, {obj.SensorMsgsImageClass}, {'nonempty', 'scalar'}, 'Detection', 'CroppedDepth');
            
            obj.JavaMessage.setCroppedDepth(croppeddepth.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.CroppedDepth)
                obj.Cache.CroppedDepth.setJavaObject(croppeddepth.getJavaObject);
            end
        end
        
        function croppedmask = get.CroppedMask(obj)
            %get.CroppedMask Get the value for property CroppedMask
            if isempty(obj.Cache.CroppedMask)
                obj.Cache.CroppedMask = feval(obj.SensorMsgsImageClass, obj.JavaMessage.getCroppedMask);
            end
            croppedmask = obj.Cache.CroppedMask;
        end
        
        function set.CroppedMask(obj, croppedmask)
            %set.CroppedMask Set the value for property CroppedMask
            validateattributes(croppedmask, {obj.SensorMsgsImageClass}, {'nonempty', 'scalar'}, 'Detection', 'CroppedMask');
            
            obj.JavaMessage.setCroppedMask(croppedmask.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.CroppedMask)
                obj.Cache.CroppedMask.setJavaObject(croppedmask.getJavaObject);
            end
        end
        
        function grasppose = get.GraspPose(obj)
            %get.GraspPose Get the value for property GraspPose
            if isempty(obj.Cache.GraspPose)
                obj.Cache.GraspPose = feval(obj.GeometryMsgsPoseStampedClass, obj.JavaMessage.getGraspPose);
            end
            grasppose = obj.Cache.GraspPose;
        end
        
        function set.GraspPose(obj, grasppose)
            %set.GraspPose Set the value for property GraspPose
            validateattributes(grasppose, {obj.GeometryMsgsPoseStampedClass}, {'nonempty', 'scalar'}, 'Detection', 'GraspPose');
            
            obj.JavaMessage.setGraspPose(grasppose.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.GraspPose)
                obj.Cache.GraspPose.setJavaObject(grasppose.getJavaObject);
            end
        end
        
        function graspwidth = get.GraspWidth(obj)
            %get.GraspWidth Get the value for property GraspWidth
            graspwidth = single(obj.JavaMessage.getGraspWidth);
        end
        
        function set.GraspWidth(obj, graspwidth)
            %set.GraspWidth Set the value for property GraspWidth
            validateattributes(graspwidth, {'numeric'}, {'nonempty', 'scalar'}, 'Detection', 'GraspWidth');
            
            obj.JavaMessage.setGraspWidth(graspwidth);
        end
        
        function graspquality = get.GraspQuality(obj)
            %get.GraspQuality Get the value for property GraspQuality
            graspquality = single(obj.JavaMessage.getGraspQuality);
        end
        
        function set.GraspQuality(obj, graspquality)
            %set.GraspQuality Set the value for property GraspQuality
            validateattributes(graspquality, {'numeric'}, {'nonempty', 'scalar'}, 'Detection', 'GraspQuality');
            
            obj.JavaMessage.setGraspQuality(graspquality);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.CroppedRgb = [];
            obj.Cache.CroppedDepth = [];
            obj.Cache.CroppedMask = [];
            obj.Cache.GraspPose = [];
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
            cpObj.ClassLabel = obj.ClassLabel;
            cpObj.XLeft = obj.XLeft;
            cpObj.YTop = obj.YTop;
            cpObj.Width = obj.Width;
            cpObj.Height = obj.Height;
            cpObj.GraspWidth = obj.GraspWidth;
            cpObj.GraspQuality = obj.GraspQuality;
            
            % Recursively copy compound properties
            cpObj.CroppedRgb = copy(obj.CroppedRgb);
            cpObj.CroppedDepth = copy(obj.CroppedDepth);
            cpObj.CroppedMask = copy(obj.CroppedMask);
            cpObj.GraspPose = copy(obj.GraspPose);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.ClassLabel = strObj.ClassLabel;
            obj.XLeft = strObj.XLeft;
            obj.YTop = strObj.YTop;
            obj.Width = strObj.Width;
            obj.Height = strObj.Height;
            obj.GraspWidth = strObj.GraspWidth;
            obj.GraspQuality = strObj.GraspQuality;
            obj.CroppedRgb = feval([obj.SensorMsgsImageClass '.loadobj'], strObj.CroppedRgb);
            obj.CroppedDepth = feval([obj.SensorMsgsImageClass '.loadobj'], strObj.CroppedDepth);
            obj.CroppedMask = feval([obj.SensorMsgsImageClass '.loadobj'], strObj.CroppedMask);
            obj.GraspPose = feval([obj.GeometryMsgsPoseStampedClass '.loadobj'], strObj.GraspPose);
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
            
            strObj.ClassLabel = obj.ClassLabel;
            strObj.XLeft = obj.XLeft;
            strObj.YTop = obj.YTop;
            strObj.Width = obj.Width;
            strObj.Height = obj.Height;
            strObj.GraspWidth = obj.GraspWidth;
            strObj.GraspQuality = obj.GraspQuality;
            strObj.CroppedRgb = saveobj(obj.CroppedRgb);
            strObj.CroppedDepth = saveobj(obj.CroppedDepth);
            strObj.CroppedMask = saveobj(obj.CroppedMask);
            strObj.GraspPose = saveobj(obj.GraspPose);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.Detection.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.Detection;
            obj.reload(strObj);
        end
    end
end
