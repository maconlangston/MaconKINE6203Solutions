function [output] = counter(num1,num2)
% This function counts between two numbers. It takes 2 inputs which are
% numbers. It returns a list of numbers starting from the smallest input
% value, counting by 1 until it reaches the larger input value.
if (num1 < num2)
   output = [num1:num2]';
else
    output = [num2:num1]';
end

end
