function [CC_M] = corr_matrix(board,chip)

%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

board = double(board);

chip = double(chip);
chip = chip - mean(mean(chip));

k = 1;
l = 1;

[M,N] = size(board);
[m,n] = size(chip);

CC_M = zeros(M-m+1,N-n+1);

for i = 1:(M-m+1)
    for j = 1:(N-n+1)
        Comparator = board(i:i+m-1,j:j+n-1);
        Comparator = Comparator - mean(mean(Comparator));
        CC_M(i,j) = corr_2d(Comparator,chip);
    end
    l = l+1;
end

end

