function [ pl ] = leg_ang( n,mu )
%LEG_ANG Summary of this function goes here
%   Detailed explanation goes here
tmp=legendre(n,mu);
pl=tmp(1,:);
clear tmp;

end

