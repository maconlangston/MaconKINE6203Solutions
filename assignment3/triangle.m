function [triangleTest] = triangle (array)
% This function tests to see if the length of 3 sides makes a valid
% triangle. It takes 1 input which is a 3-element array. It returns a
% logical value of 1 if the 3 elements in the array represent a valid
% triangle. It returns a logical value of 0 if the 3 elements in the array
% do not represent a valid triangle.
arrayOrder = sort(array);

if (arrayOrder(1) + arrayOrder(2) > arrayOrder(3))
    triangleTest = true;
else
   triangleTest = false;
end

end