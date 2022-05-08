function plot_Box(M_cell,board,chip)

%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(chip);

imshow(board);
hold on;
for i = 1:2
    X = cell2mat(M_cell(i));
    [row,colmun] = find(X > 0.73);
    for j = 1:length(row)
        pos = [colmun(j),row(j),n,m];
        rectangle('Position',pos,'EdgeColor','m',...,
        'LineWidth',3)
    end
end

hold off;
saveas(gcf,'finall result.png')
end

