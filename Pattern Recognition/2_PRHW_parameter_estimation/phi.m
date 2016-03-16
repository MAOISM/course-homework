function [ y ] = phi( x, a, window_function)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

y = 0;
switch window_function
    case 'normal'
        if(x<=a*0.5&&x>=-0.5*a)
            y = 1.0/a;
        end
    case 'gaussian'
        y = gaussmf(x,[1, 0]);
    case 'exponential'
        y = 0.5*exp(-abs(x));
end
end

