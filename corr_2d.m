function [CC] = corr_2d(X,Y)


r = sum(sum(X.*Y));

s1 = sqrt(sum(sum(X.*X)));

s2 = sqrt(sum(sum(Y.*Y)));

CC = r/(s1*s2);

end

