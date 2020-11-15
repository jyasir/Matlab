%SENG5233
%Homework Problem 1
%Yasir Jamal
%03/01/2016

function difeq_fun_1()

%RK2 Method

h = 0.001; % increment value

z0 = 1; % initial value

tspan = [1 20]; % time span

n = diff(tspan)/h;

ti = tspan (1); % inital time value

tf = tspan (2); % final time value

tp = ti:h:tf;

z = zeros (ti, length(tspan));

z(1) = z0;

t = 1:0.1:20;


%exact solution
exact = exp(-0.05.*t).*(cos(t) + 0.05 .* sin (t));


for n = 2 : length(tp)    
    
    k1 = h * zdf (tp(n-1), z(n-1,:));
    
    %display (k1)

    k2 = h * zdf ((tp(n-1) + 1.5*h) , (z(n-1, :) + 1.5 * k1));

    z(n, :) = z(n-1,:) + ((2/3)*k1) + ((1/3)*k2);
    
    %display (z)
        
end

plot (tp, z(:,1),'-',t, exact,'--')

xlabel('Time in t units')

ylabel('Function')

legend ('RK2', 'Exact')

grid on

function z_dot = zdf(t,z, tspan, z0, h)

%z_dot = zeros (length(np));

z_dot(1) = z(2);

z_dot(2) = (-0.1)*z(2) - z(1);

 


