function [Gray_Channel_M,Gray_Channel_S] = rgb_to_gray(board,chip)

%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Gray_Channel_M = 0.299 * board(:,:,1) + 0.578 * board(:,:,2) + 0.114 * board(:,:,3);

Gray_Channel_S = 0.299 * chip(:,:,1) + 0.578 * chip(:,:,2) + 0.114 * chip(:,:,3);

end

