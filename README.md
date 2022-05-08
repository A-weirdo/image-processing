# image-processing
a simple code with matlab that find what u want from main picture with ur specific picture,


example:
we want to find an IC in a circuit 


so at first we  select main pic

![main pic](https://github.com/A-weirdo/image-processing/blob/main/Printed-Circuit-Board.jpg)


and then IC what we want to find :

![IC pic](https://github.com/A-weirdo/image-processing/blob/main/BA3240.png)



after selecting those two pic , code bring them to the gray mode and find them with  Brightness , it makes the proccing save time and use less energi and also it takes less time in coding , and then it start to find similar with 2d correlation coefficient. 



![2-d correlation coefficient](https://github.com/A-weirdo/image-processing/blob/main/2d%20correlation%20coefficient%20formula.png)




and then we have matris of Correlation Coefficient and for looking the pieces we must set value in the cade that it's 0.73 if  Correlation Coefficient value is more than that number , the code will draw Rectangle  and finish. :)



![finall result](https://github.com/A-weirdo/image-processing/blob/main/finall%20result.png)















also gray mode: 


![gray main](https://github.com/A-weirdo/image-processing/blob/main/main%20gray.png)



















