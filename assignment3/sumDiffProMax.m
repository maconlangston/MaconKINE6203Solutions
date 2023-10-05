function [sum,diff,product,maxNum] = sumDiffProMax (num1,num2)
% This function will calculate the sum, difference, product, and
% max value of 2 numbers. It takes 2 inputs which are numbers. It
% returns the sum, difference, product, and max of the those 2 numbers.
sum = num1 + num2;
diff = num1 - num2;
product = num1 * num2;
maxNum = max (num1,num2);
end