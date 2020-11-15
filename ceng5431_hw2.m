%   CENG5431 - Digital Signal Processing
%   Date     - 10/16/2017
%   Homework 1 - Problem 2.1
%%   Matlab Function with following Specification
%       Input Parameters: A,B,C,D
%       Output Parameter: X = A+B+C+D
%       Time Interval -2T <= t <= 2T
%           Time Interval T = 2 * pi / B

function X = ceng5431_hw2(A,B,C,D)

    clc;                         %Clears the command window
    
    X = A+B+C+D;                 %Ouput is sum of input parameters A,B,C,D
    
    %fprintf('The Output is %d \n', X);   %Displays the output in Command Window
    
    t = (-2)* (2 * pi / B): 2 *(2 * pi / B);   %Time Interval
    
    E = A * sin(B * t - C * B) + D;  %Sinusoidal Function y(t) = ASin(B(t-c)) + D
    
    F = A * cos(B * t - C * B) + D;  %Sinusoidal Function y(t) = ACos(B(t-c)) + D
    
    subplot(2,1,1);          %Creates a file with two graphs in single column
    
    hold on; %holds the compiler on top graph
    
    title('\fontsize{12}Sine Function');
    
    xlabel('Time(sec)');
    
    ylabel('Amplitude');
    
    grid on;
    
    plot(t, E);
    
    subplot(2,1,2);
    
    hold on; %holds the compiler on bottom graph
    
    title('\fontsize{12}Cosine Function');
    
    xlabel('Time(sec)');
    
    ylabel('Amplitude');
    
    grid on;
    
    plot(t, F);
    
end