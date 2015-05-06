%% This function calculates a single axis rotation about a z-axis through an angle chi.
function out=C_z(chi)
out=[cos(chi),sin(chi),0;-sin(chi),cos(chi),0;0,0,1];
end