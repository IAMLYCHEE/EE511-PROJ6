k = 1;
for x = 0 : 0.1 : 20 
    y(k) = exp5_5(x);%pj
    k = k + 1;
end
plot(y)
hold on
k = 1;
for x = 0 : 0.1 : 20 
    y(k) = 2*0.1 * exp(-0.1 * x);%qj
    k = k + 1;
end
plot(y)