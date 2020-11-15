

%SENG5233
%Homework Problem 3-28
%Yasir Jamal
%02/02/2016

function [t1 , t2 , t3] = rotation

%Part a of the question    
%v1, v2 and v3 are the vector co-ordinates
    
    v1 = [1 1]; v2 = [3 1]; v3 = [3 2] ; Q = pi/4;
    
    % Q is the rotated angle 45
    
    % vectors are provided in 1 x 2 row format
    
    rq = [cos(Q) -sin(Q); sin(Q) cos(Q)]; %2D rotation matrix
    
    t1 = rq * v1'; % rotated vector 1
    
    t2 = rq * v2'; % rotated vector 2 
    
    t3 = rq * v3'; % rotated vector 3
    
    % results obtained from these calculations are 2 x 1 col vector
    
    % the above function is validated by setting Q = 0 degrees
   
%Part b of the question

    limits = [0 4 0 4];
    
    axis (limits);

    hold all
        
    %Original Vector
    
    x = [1  3  3  1];
    
    y = [1  1  2  1];
    
    grid on
    
    plot (x,y,'-');
    
    % Rotated Vector
    
    s = [t1(1) t2(1) t3(1) t1(1)];
    
    j = [t1(2,1) t2(2,1) t3(2,1) t1(2,1)];
    
    plot (s, j, '--');
    
    title ('Matlab Transformation of Vector');
    
    xlabel('Original Vector and Rotated Vector');
    
    legend ('Original  ', 'Rotated ', 'Location', 'northeast');
    
    
    
    


