function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Macon Langston
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced % Bug found. The OR conditions made while loop always true. Fixed by using AND conditons.    
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; % Bug found. Inputed level 3 and returned an error: unrecognized funciton or variable 'advancedhighest'. Fixed by changing variable to 'advancedHighest'.         
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest); % Bug found. secretNumber will always be highest value. Fixed by using randi().    

% initialize number of guesses and User_guess

numOfTries = 0; % Bug found. numOfTries is updated below resulting in first try to count as 2 tries. Fixed by settting numOfTries = 0.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest % Bug found. Guessing highest value returned a message of invlaid guess. Fixed by changinf >= to >.

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;


% report whether the user's guess was high, low, or correct

if userGuess < secretNumber % Bug found. Duplicate if statement. Fixed by changing to less than.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n',secretNumber,numOfTries); % Bug found. Number of tries was missing from output. Fixed by adding variable numOfTries.
end % Bug found. There was not an end statement. Fixed by adding end to if statement.

end  % of guessing while loop

fprintf('\nGame Over. Thanks for playing the Guess That Number game.\n\n'); % Bug found. Satement was in wrong place. Moved to after end of guessing while loop.
% end of game