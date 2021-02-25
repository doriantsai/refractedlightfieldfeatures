classdef GetNamesListResponse < ros.Message
    %GetNamesListResponse MATLAB implementation of rv_msgs/GetNamesListResponse
    %   This class was automatically generated by
    %   ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2020 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'rv_msgs/GetNamesListResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '77ae5334da45bcf79132482fef7b466e' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        NamesList
    end
    
    properties (Constant, Hidden)
        PropertyList = {'NamesList'} % List of non-constant message properties
        ROSPropertyList = {'names_list'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GetNamesListResponse(msg)
            %GetNamesListResponse Construct the message object GetNamesListResponse
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
        
        function nameslist = get.NamesList(obj)
            %get.NamesList Get the value for property NamesList
            javaArray = obj.JavaMessage.getNamesList;
            array = obj.readJavaArray(javaArray, 'char');
            nameslist = arrayfun(@(x) char(x), array, 'UniformOutput', false);
        end
        
        function set.NamesList(obj, nameslist)
            %set.NamesList Set the value for property NamesList
            if isstring(nameslist)
                nameslist = cellstr(nameslist);
            end
            
            if ~isvector(nameslist) && isempty(nameslist)
                % Allow empty [] input
                nameslist = cell.empty(0,1);
            end
            
            validateattributes(nameslist, {'cell', 'string'}, {'vector'}, 'GetNamesListResponse', 'NamesList');
            if any(cellfun(@(x) ~ischar(x), nameslist))
                error(message('ros:mlros:message:CellArrayStringError', ...
                    'nameslist'));
            end
            
            javaArray = obj.JavaMessage.getNamesList;
            array = obj.writeJavaArray(nameslist, javaArray, 'char');
            obj.JavaMessage.setNamesList(array);
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
            cpObj.NamesList = obj.NamesList;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.NamesList = strObj.NamesList;
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
            
            strObj.NamesList = obj.NamesList;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = ros.custom.msggen.rv_msgs.GetNamesListResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = ros.custom.msggen.rv_msgs.GetNamesListResponse;
            obj.reload(strObj);
        end
    end
end
