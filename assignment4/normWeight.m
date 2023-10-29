function [day1Mean,day2Mean,day3Mean] = normWeight(Weight,Day1,Day2,Day3)
%normWeight Normalizes isometric strength data to weight of each subject.
%   Inputs: Weight = double value array representing the weight of each
%           subject.
%
%           Day1 = double value array representing isometric strength for
%           the first day.
%
%           Day2 = double value array representing isometric strength for
%           the second day.
%
%           Day3 = double value array representing isometric strength for
%           the third day.
%
%   Outputs: day1Mean = double value representing the overall mean of the
%            isometric strength data for the first day.
%
%            day2Mean = double value representing the overall mean of the
%            isometric strength data for the second day.
%
%            day3Mean = double value representing the overall mean of the
%            isometric strength data for the third day.
%
% Tested using Matlab version R2023a
% Tested on Lenovo P53s, Windows 11 Pro
%
% Last updated: 10/27/23
for i = 1: length(Weight)
normDay1(i) = Day1(i) / Weight(i);
normDay2(i) = Day2(i) / Weight(i);
normDay3(i) = Day3(i) / Weight(i);
end

day1Mean = mean(normDay1);
day2Mean = mean(normDay2);
day3Mean = mean(normDay3);
end