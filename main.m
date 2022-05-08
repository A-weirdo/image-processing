
A = imread(uigetfile({'*.jpg';'*.jepg';'*.png';'*.tiff*'},...
                          'pls select the main pic(board)'));%main picture
B = imread(uigetfile({'*.png';'*.jpg';'*.jepg';'*.tiff*'},...
                          'pls picture of sth that we want to find from main pic'));%picture of sth that we want to find in the main pic
[M1,M2] = rgb_to_gray(A,B); 
imwrite(M1,'main gray.png');
imwrite(M2,'piece gray.png');


CC_M_F = corr_matrix(M1,M2);

CC_M_R = corr_matrix(M1,imrotate(M2,180));

M_cell = {CC_M_F; CC_M_R};

plot_Box(M_cell,A,M2);

figure;
surf(CC_M_F,'Edgecolor','none');
saveas(gcf,'Correlation Coefficient result f.png')

figure
surf(CC_M_R,'Edgecolor','none');
saveas(gcf,'Correlation Coefficient result reverse.png')


figure
subplot(4 , 4 , [1,2,5,6]) , imshow(A) , title('PCB image');
subplot(4 , 4 , [3,4,7,8]) , imshow(B) , title('IC image');
subplot(4 , 4 , [10,11,14,15]) , imshow("finall result.png") , title('Matching result');
sgtitle('final result with inputs')
saveas(gcf,'All in one.png')
% 
% figure
% subplot(2 , 3 , 1) , imshow(A) , title('PCB image');
% subplot(2 , 3 , 3) , imshow(B) , title('IC image');
% subplot(2 , 3 , 5) , imshow("finall result.png") , title('Matching result');
% sgtitle('final result with inputs')
% saveas(gcf,'All in one.png')