%% This function calculates a single axis rotation about an x-axis through an angle chi.
function out=C_x(chi)
out=[1,0,0;0,cos(chi),sin(chi);0,-sin(chi),cos(chi)];
end