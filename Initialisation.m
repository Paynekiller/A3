%Group 13 main script
%Flight Mechanics Assignment 3
%Avion Aircraft

clc
clear all

%Open file browse dialog
[StrFileName,StrPathName] = uigetfile('*.m','Select the MATLAB code file');

%Handler for if user cancels
if ~ischar(StrFileName)
  disp('User cancelled');
  return
end

%Get full file name
StrFullPathName = fullfile(StrPathName, StrFileName);

%Run the script
run(StrFullPathName);

%Display which file has been read
disp(['Current data has been loaded from: ' StrFileName])