function [totalAmount] = countMoney (quarters,dimes,nickels,pennies)
% This function will count how much change you have. It takes 4 inputs
% which are the number of quarters, dimes, nickels, and pennies. It returns
% the total amount of money.
totalAmount = ((0.25*quarters) + (0.10*dimes) + (0.05*nickels) + (0.01*pennies));
end