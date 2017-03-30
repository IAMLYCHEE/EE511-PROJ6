function theoreticalOutput = theoreticalPdfNormal(m,v,input)
%theoreticalOutput = theoreticalPdfNormal(m,v,input)

c1 = 1/(sqrt(2 * pi) * sqrt(v));
theoreticalOutput = c1 * exp(-((input - m).^2)/(2 * v));
end

