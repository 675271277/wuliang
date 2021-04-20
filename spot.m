classdef spot < handle
    properties
        speed
        acceleration
        direction  
        position
    end
    methods
        function obj = spot(speed,acceleration,direction,position)
            obj.speed=speed;
            obj.acceleration = acceleration;
            obj.direction=direction;
            obj.position=position;
        end
        function forward(obj,time)
            obj.position(1)=obj.position(1)+cos(obj.direction)*obj.speed*time;
            obj.position(2)=obj.position(2)+sin(obj.direction)*obj.speed*time;
            obj.speed=obj.acceleration*time+obj.speed;
        end
        %function jiasudu(obj,time)
        %obj.speed=obj.accleration*time+obj.speed;
        %end
    end
end


