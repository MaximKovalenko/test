function [ Rmax ] = max_range( Pt,G,lambda,RCS,Te,B,SNR )
k = physconst('Boltzmann');
PtdB = 10*log10(Pt);
lambdadB = 10*log10(lambda);
RCSdB = 10*log10(RCS);
kdB = 10*log10(k);
TedB = 10*log10(Te);
BdB = 10*log10(B);
pidB = 10*log10((4*pi)^3);
RmaxdB4 = (PtdB+(G*2)+(lambdadB*2)+RCSdB)-(pidB+kdB+TedB+BdB+3+SNR);
Rmax4 = 10^(RmaxdB4/10);
Rmax = Rmax4^(1/4);
end

