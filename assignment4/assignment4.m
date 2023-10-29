%% Assignment 4: Analyzing Isometric Strength Data
% This code will analyze a set of isometic strength data
% Written by: Macon Langston


% This code will first import a .csv file containing isometric strength
% data. Then it will analyze the data by calculating means, comparing data
% across days, and then normalizing the data to the weight of each subject.
% This code will then export the results from the analysis as a .csv file.

% The following function files will be needed in order to run the code:
%       importfile.m
%       genderIsoCalc.m
%       dayComparer.m
%       normWeight.m

% Tested using Matlab version R2023a
% Tested on Lenovo P53s, Windows 11 Pro

% Last updated: 10/27/23

%% Import Data
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile("isok_data_6803.csv", [2, Inf]);

%% Calculating Means
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

%% Comparing Days
[day1toDay2] = dayComparer(SubjectID,Day1,Day2);

[day2toDay3] = dayComparer(SubjectID,Day2,Day3);

%% Normalizing Weight
[normDay1mean,normDay2mean,normDay3mean] = normWeight(Weight,Day1,Day2,Day3);

%% Export Data

% resize variables to have same demension
femaleIsoIndMeans(13,1) = NaN;
maleGroupIsoMean(2:13,1) = NaN;
femaleGroupIsoMean(2:13,1) = NaN;
day1toDay2(13,1) = NaN;
day2toDay3(12:13,1) = NaN;
normDay1mean(2:13,1) = NaN;
normDay2mean(2:13,1) = NaN;
normDay3mean(2:13,1) = NaN;

% create table of desired output variables
results = table (maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean);

writetable(results,'iso_results.csv')
