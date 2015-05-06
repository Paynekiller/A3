%Group 13 main script
%Flight Mechanics Assignment 3
%Avion Aircraft

%Define the time variables
n =100; %Number of Time Steps
dt = 0.1; %Time Step

%Initialise other vectors
T = zeros(z,n); %Time Vector
X = zeros(13,1); %State Vector
U = zeros(4,1); %Control Vector
V = zeros(3,1); %Air Path Vector
A = zeros(3,1); %Attitude Vector


for i =2:n
    T(i) = i*dt
    X(:,i) = X(:,i-1)+Xdot*dt
    
    
    
end