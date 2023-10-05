function [textOut] = wooHah (number1,number2)
% This function calculates the sum between 2 numbers and displays a text 
% based on if the sum is odd or even. It takes 2 inputs which are numbers.
% It returns the text 'Woo' if the sum of the two inputs are even. It
% returns the text 'Hah' if the sume of the two inputs are odd.
value1 = number1 + number2;

if (mod(value1,2) == 0)
    textOut = 'Woo';
else
    textOut = 'Hah';
end

end