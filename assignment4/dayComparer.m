function subjectImproved = dayComparer(SubjectID,varargin)
%dayComparer Compares the isometric strength data from day to day and
%checks for an increase in strength.
%   Inputs: SubjectID = string array representing the ID of each subject
%
%           varagin = accepts mulitple inputs. There should be two inputs 
%           for two different cases. Each input is a double value array 
%           representing isometric strength for a certain day.
%           First case: input 1 = Day1, input 2 = Day2
%           Second case: input 1 = Day2, input 2 = Day3
%
%   Outputs: subjectImproved = string array representing the subject IDs of
%            subjects who increased their isometric strength.
%
% Tested using Matlab version R2023a
% Tested on Lenovo P53s, Windows 11 Pro
%
% Last updated: 10/27/23
for i = 1:length(SubjectID)
    getBetterCheck(i) = varargin{2}(i) - varargin{1}(i);
    if (getBetterCheck(i) > 0)
        improved (i) = SubjectID (i);
    end
    
end

subjectImproved = rmmissing(improved');
            

end