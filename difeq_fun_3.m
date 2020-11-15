%SENG5233
%Homework Problem 3
%Yasir Jamal
%03/01/2016

function x_dot = difeq_fun_3(t,x)

x_dot = zeros (5,1);

x_dot(1) = x(2);

x_dot(2) = x(3);

x_dot(3) = sin(3*t) - 0.7 * (x(2) - x(5)) - 0.2 * (x(1) - x(4));

x_dot(4) = x(5);

x_dot(5) = 0.7 * (x(2) - x(5)) - 0.5 * x(4);




