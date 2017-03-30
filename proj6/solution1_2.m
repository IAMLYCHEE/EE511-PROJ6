%Polar Marsaglia method
clear
[x,y,telapsed1]=generateRandnMarsaPolar(0,1,0,1,1000000);  
sampleMeanX = mean(x);
sampleMeanY = mean(y);
sampleVarianceX = var(x);
sampleVarianceY = var(y);
covariance = cov(x,y);
[x2,y2,telapsed2] = generateRandNBoxMuller(0,1,0,1,1000000);