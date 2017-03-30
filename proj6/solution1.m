%Box Muller sample method
[x,y,telapsed]=generateRandNBoxMuller(1,4,2,9,1000);
A = x + y;
covariance = cov(x,y);
figure
histogram(A,35,'BinLimits',[-15,15],'Normalization','probability');
hold on
t = -15 : 0.03 : 15;
theoPdf = theoreticalPdfNormal(3,13,t) ;
plot(t,theoPdf);
xlabel('value')
ylabel('probability')
title('Box Muller method (1000 sample)')
legend('Box Muller','Theoretical')

sampleMean = mean(A);
sampleVariance = var(A);




