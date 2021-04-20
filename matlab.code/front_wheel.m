classdef front_wheel<spot
    %UNTITLED11 此处显示有关此类的摘要
    %   此处显示详细说明
    
    properties
        steering_angle
    end
    
    methods
        function obj = front_wheel(speed,acceleration,direction,position,steering_angle)
            %UNTITLED11 构造此类的实例
            %   此处显示详细说明
            obj = obj@spot(speed,acceleration,direction,position);
            obj.steering_angle=steering_angle;
        end
        
        function turn(obj,angle)
            obj.steering_angle=obj.steering_angle+angle;
        end
    end
end

