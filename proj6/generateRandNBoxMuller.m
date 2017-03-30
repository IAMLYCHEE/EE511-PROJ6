function [x,y,telapsed] = generateRandNBoxMuller(m1,v1,m2,v2,sampleAmount)
%generate two random variables using Box-Muller method
tstart = tic;
u1 = rand(sampleAmount,1);
u2 = rand(sampleAmount,1);

% Generate X and Y that are N(0,1) random variables and independent
X = sqrt( - 2*log(u1)).*cos(2*pi*u2 ); 
Y = sqrt( - 2*log(u1)).*sin(2*pi*u2 );

% fit them to a random variable 
x = sqrt(v1)*X + m1; % x~ N(m1,v1)
y = sqrt(v2)*Y + m2; % y~ N(m2,v2)

telapsed = toc(tstart);