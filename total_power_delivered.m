function [ P_dr ] = total_power_delivered( Pt,G,lambda,RCS,R )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
PtdB = 10*log10(Pt);
lambdadB = 10*log10(lambda);
RCSdB = 10*log10(RCS);
RdB = 10*log10(R);
pidB = 10*log10((4*pi)^3);
P_drdB = (PtdB+(G*2)+(lambdadB*2)+RCSdB)-(pidB+(RdB*4));
P_dr = 10^(P_drdB/10);
end

