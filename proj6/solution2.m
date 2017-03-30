M = 2;
amount = 0;
trial = 0;
while amount < 1000
    %generate a sample from EXP(0.1)
    y = generateExpDis(0.1);
    if rand(1) < exp5_5(y)/(M*0.1 * exp(-0.1 * y))
        amount = amount + 1;
        sample(amount) = y;
    end
    trial = trial + 1;
end
efficiency = 1000/trial;
histogram(sample',35,'BinLimits',[0,40],'Normalization','probability');
hold on
t = 0: 0.1: 40;
plot(t,exp5_5(t))
xlabel('x')
ylabel('probability')
legend('accept-reject','theoretical')
title('Gamma(5.5,1)')