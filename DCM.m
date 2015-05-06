%% This function computes a 3x3 Direction Cosine Matrix. 
% Input arguments are quaternion components as well as the type of DCM.
% 'be' is the Earth to body DCM.
% 'eb' is the Body to earth DCM.
function out=DCM(q0,q1,q2,q3,type)
    l1=q0^2+q1^2-q2^2-q3^2;
    l2=2*(q1*q2+q0*q3);
    l3=2*(q1*q3-q0*q2);
    m1=2*(q1*q2-q0*q3);
    m2=q0^2-q1^2+q2^2-q3^2;
    m3=2*(q2*q3+q0*q1);
    n1=2*(q0*q2+q1*q3);
    n2=2*(q2*q3-q0*q1);
    n3=q0^2-q1^2-q2^2+q3^2;
    switch type
        case 'be'
            % Earth to body transformation
            out=[l1,l2,l3;m1,m2,m3;n1,n2,n3];
        case 'eb'
            % Body to earth transformation
            out=[l1,m1,n1;l2,m2,n2;l3,m3,n3];
        otherwise
            disp('Error: Invalid co-ordinate transformation');
    end
end