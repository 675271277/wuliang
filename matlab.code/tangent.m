function direction = tangent(conter,location,speed,time)
%   计算点与转向中心连线扫过的扇形的圆心角
%   两个2*2浮点数
k=(location(2)-conter(2))/(location(1)-conter(1));
if k==0
    d=pi/2;
else
    k1=-1/k;
    d=atan(k1);
end
r=norm(conter-location);
l=speed*time;
direction=2*asin(l/2/r)+d;
end

