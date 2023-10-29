function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
%genderIsoCalc Calculates the individual mean isometric strength as well as
%group isometric strength for both males and females.
%   Inputs: Gender = categorical array representing gender of the subjects
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
%   Outputs: maleIsoIndMeans = double value array representing the
%            isometric strength mean across the three days for each male.
%
%            femaleIsoIndMeans = double value array representing the
%            isometric strength mean across the three days for each female.
%           
%            maleGroupIsoMean = double value representing the mean of all
%            the male individual isometric strength means.
%
%            femaleGroupIsoMean = double value representing the mean of all
%            the female individual isometric strength means.
%
% Tested using Matlab version R2023a
% Tested on Lenovo P53s, Windows 11 Pro
%
% Last updated: 10/27/23
average = (Day1 + Day2 + Day3) / 3;

for i = 1:length(Gender)
    if (Gender(i) == "M")
        maleMean(i) = average(i);
    end
   
    if (Gender(i) == "F")
        femaleMean(i) = average(i);
    end
end

maleIsoIndMeans = nonzeros(maleMean);
femaleIsoIndMeans = nonzeros(femaleMean);

maleGroupIsoMean = mean(maleIsoIndMeans);
femaleGroupIsoMean = mean(femaleIsoIndMeans);

end