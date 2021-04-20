function [xo,yo] = Steering_center(left,right,left_angle,right_angle)
%  输入两后轮坐标，确定直线
%  内转轮旋转角度，
% k=(right(2)-left(2))/(right(1)-left(1));
% b=left(2)-k*left(1);
% x=-10:0.01:10;
% y=k*x+b;% 两后轮轴线
% if k~=0
%     k2=-1/k; %  两左轮连线的斜率
%     y2=k2*(x-left(1))+left(2); %两左轮连线
%     angle = angle+atan(k2);
% else
%     angle=angle+pi/2;
% end
%     k3=tan(angle); %前轮方向的斜率
%     y3=k3*(x-front(1))+front(2);
%     k4=-1/k3;  % 前轮法线方向
%     y4=k4*(x-front(1))+front(2);
%     syms x0 y0
%     s=solve((x0-front(1))*k4+front(2)==y0,k*x0+b==y0,x0,y0);
%     xo=double(s.x0);
%     yo=double(s.y0);

if left_angle==pi/2
    k2=tan(right_angle);
    b2=right(2)-k2*right(1);
    syms x y
    s=solve(x==left(1),k2*x+b2==y,x,y);
    xo=double(s.x);
    yo=double(s.y);
    return
elseif right_angle==pi/2
    k1=tan(right_angle);
    b1=right(2)-k1*right(1);
    syms x y
    s=solve(x==left(1),k1*x+b1==y,x,y);
    xo=double(s.x);
    yo=double(s.y);
    return
else
    k1=tan(left_angle);
    k2=tan(right_angle);
    b1=left(2)-k1*left(1);
    b2=right(2)-k2*right(1);
    
    syms x y
    s=solve([k1*x+b1==y,k2*x+b2==y],[x,y]);
    xo=double(s.x);
    yo=double(s.y);
    
end

% plot(x,y)
% hold on
% plot(x,y2);
% plot(x,y3)
% plot(x,y4)
% plot(xo,yo,"r+")
% axis([-5,5,-5,5])
% hold off

end

