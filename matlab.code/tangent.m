function direction = tangent(conter,location,speed,time)
%   �������ת����������ɨ�������ε�Բ�Ľ�
%   ����2*2������
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

