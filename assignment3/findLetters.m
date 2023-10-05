function [wordLength,firstLetter,lastLetter] = findLetters (inputWord)
% This function returns the length along with the first and last characters
% of a word. It takes 1 input which is a string. It returns the length,
% first character, and last character of the string.
wordLength = strlength(inputWord);
firstLetter = inputWord(1);
lastLetter = inputWord(end);
end