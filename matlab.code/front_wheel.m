classdef front_wheel<spot
    %UNTITLED11 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        steering_angle
    end
    
    methods
        function obj = front_wheel(speed,acceleration,direction,position,steering_angle)
            %UNTITLED11 ��������ʵ��
            %   �˴���ʾ��ϸ˵��
            obj = obj@spot(speed,acceleration,direction,position);
            obj.steering_angle=steering_angle;
        end
        
        function turn(obj,angle)
            obj.steering_angle=obj.steering_angle+angle;
        end
    end
end

