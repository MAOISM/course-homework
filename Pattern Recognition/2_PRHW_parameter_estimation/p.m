function [ y ] = p( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

y = 0.1*gaussmf(x,[1 -1])+0.9*gaussmf(x,[1,1]);
end

