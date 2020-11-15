%SENG5233
%Homework Problem 2
%Yasir Jamal
%03/01/2016

function x_dot = difeq_fun_2(t,x) 

x_dot = zeros (2,1); 

x_dot(1) = x(2);

x_dot(2) = -(0.1)*x(2) - x(1);










