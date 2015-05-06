%% This function takes euler angles in radians and returns the equivalent quaternion 
% Input vector is E=[phi,theta,psi]
function Q=E2Q(E)
Q=zeros(4,1);
% Convert to quaternion components 
Q(1)=cos(E(3)/2).*cos(E(2)/2).*cos(E(1)/2)+sin(E(3)/2).*sin(E(2)/2).*sin(E(1)/2);
Q(2)=cos(E(3)/2).*cos(E(2)/2).*sin(E(1)/2)-sin(E(3)/2).*sin(E(2)/2).*cos(E(1)/2);
Q(3)=cos(E(3)/2).*sin(E(2)/2).*cos(E(1)/2)+sin(E(3)/2).*cos(E(2)/2).*sin(E(1)/2);
Q(4)=-cos(E(3)/2).*sin(E(2)/2).*sin(E(1)/2)+sin(E(3)/2).*cos(E(2)/2).*cos(E(1)/2);
end