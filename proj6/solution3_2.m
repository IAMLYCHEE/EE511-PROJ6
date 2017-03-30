%alpha = 0.5
X = stblrnd(0.5,0.75,1,0,1000,1);
histogram(X,'BinLimits',[-20,20],'Normalization','probability');
t = -20:0.2:20;
hold on
y = stblpdf(t,0.5,0.75,1,0);
plot(t,y)
title('\alpha = 0.5, \beta = 0.75')
legend('histogram','theoretical')
hold off
figure
plot(X)
ylabel('sample value')
title('time series \alpha = 0.5 \beta = 0.75')


figure
%alpha = 1
X = stblrnd(1,0.75,1,0,1000,1);
histogram(X,'BinLimits',[-20,20],'Normalization','probability');
t = -20:0.2:20;
hold on
y = stblpdf(t,1,0.75,1,0);
plot(t,y)
title('\alpha = 1, \beta = 0.75')
legend('histogram','theoretical')
hold off
figure
plot(X)
ylabel('sample value')
title('time series \alpha = 1.0 \beta = 0.75')


figure
%alpha = 1.8
X = stblrnd(1.8,0.75,1,0,1000,1);
histogram(X,'BinLimits',[-20,20],'Normalization','probability');
t = -20:0.2:20;
hold on
y = stblpdf(t,1.8,0.75,1,0);
plot(t,y)
title('\alpha = 1.8, \beta = 0.75')
legend('histogram','theoretical')
hold off
figure
plot(X)
ylabel('sample value')
title('time series \alpha = 1.8 \beta = 0.75')


figure
%alpha = 2.0
X = stblrnd(2.0,0.75,1,0,1000,1);
histogram(X,'BinLimits',[-20,20],'Normalization','probability');
t = -20:0.2:20;
hold on
y = stblpdf(t,2.0,0.75,1,0);
plot(t,y)
title('\alpha = 2.0, \beta = 0.75')
legend('histogram','theoretical')
hold off
figure
plot(X)
ylabel('sample value')
title('time series \alpha = 2.0 \beta = 0.75')
