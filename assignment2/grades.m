function [gradeAvg,letterGrade] = grades (grade1,grade2,grade3)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
gradeAvg = (grade1 + grade2 + grade3) / 3;

if (gradeAvg >= 90)
    letterGrade = 'A';
elseif (80 <= gradeAvg && gradeAvg < 90)
    letterGrade = 'B';
else
    letterGrade = 'F';
end