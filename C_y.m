%% This function calculates a single axis rotation about a y-axis through an angle chi.
function out=C_y(chi)
out=[cos(chi),0,-sin(chi);0,1,0;sin(chi),0,cos(chi)];
end