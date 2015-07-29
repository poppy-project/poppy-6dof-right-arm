function [q0,q1,q2]=robot3_inv(x,y,z)
if x==0
 x=0.1;   
end
if y==0
 y=0.1;   
end
if z==0
 z=0.1;   
end
%#-- Geometria del robot
l1 = 16;
l2 = 20;

Cq2 = (x^2 + y^2 + z^2 - l1^2 - l2^2)/(2*l1*l2);
q2 = -acos(Cq2);
q1 = atan(z/sqrt(x^2 + y^2)) - atan(-l2*sqrt(1-Cq2^2)/(l1+l2*Cq2) );
q0 = -atan(x/y);

%#-- Pasar a grados
q2 = round((real(q2*180/pi))); % l_elbox_y
q1 = round(real(q1*180/pi));  % l_shoulder_x
q0 = round(real(q0*180/pi)); % l_shoulder_y

% robot3(q0,q1,q2);
% axis('on');
% grid on
% box on


