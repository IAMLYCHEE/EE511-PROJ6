function experiment(alpha,beta,sampleAmount)
figure
X = stblrnd(alpha,beta,1,0,sampleAmount,1);
histogram(X,'BinLimits',[-20,20],'Normalization','probability');
t = -20:0.2:20;
hold on
y = stblpdf(t,alpha,beta,1,0);
plot(t,y)
title(strcat('\alpha =', num2str(alpha) , '\beta =', num2str(beta)));
legend('histogram','theoretical')
hold off
%time series
figure
plot(X)
ylabel('sample value')
title(strcat('time series \alpha =', num2str(alpha) , '\beta =', num2str(beta)))