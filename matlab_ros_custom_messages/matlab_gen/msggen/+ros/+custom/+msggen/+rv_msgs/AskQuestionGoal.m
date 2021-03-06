classdef AskQuestionGoal < ros.Message
    %AskQuestionGoal MATLAB implementation of rv_msgs/AskQuestionGoal
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/AskQuestionGoal' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'b4aa2cfbf35b9c2be152dc85b85fe762' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        AskText
    end
    
    properties (Constant, Hidden)
        PropertyList = {'AskText'} % List of non-constant message properties
        ROSPropertyList = {'ask_text'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = AskQuestionGoal(msg)
            %AskQuestionGoal Construct the message object AskQuestionGoal
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
        
        function asktext = get.AskText(obj)
            %get.AskText Get the value for property AskText
            asktext = char(obj.JavaMessage.getAskText);
        end
        
        function set.AskText(obj, asktext)
            %set.AskText Set the value for property AskText
            asktext = convertStringsToChars(asktext);
            
            validateattributes(asktext, {'char', 'string'}, {}, 'AskQuestionGoal', 'AskText');
            
            obj.JavaMessage.setAskText(asktext);
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
            cpObj.AskText = obj.AskText;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.AskText = strObj.AskText;
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
            
            strObj.AskText = obj.AskText;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.AskQuestionGoal.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.AskQuestionGoal;
            obj.reload(strObj);
        end
    end
end
