function E=Q2E(Q)
%% This function takes the components of a quaternion and returns the equivalent euler angles 
% Input vector is Q=[q0,q1,q2,q3]
E=zeros(3,1);
% Convert to Euler angles
E(1)=atan2(Q(3).*Q(4)+Q(1).*Q(2),Q(1).^2+Q(4).^2-0.5);   
E(2)=atan2(Q(1).*Q(3)-Q(2).*Q(4),((Q(1).^2+Q(2).^2-0.5).^2+(Q(2).*Q(3)+Q(1).*Q(4)).^2).^0.5);
E(3)=atan2(Q(2).*Q(3)+Q(1).*Q(4),Q(1).^2+Q(2).^2-0.5);
end