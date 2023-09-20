%% Assignment 2: Tic Tac Toe
% This code will allow the user to play Tic Tac Toe
% Written by: Macon Langston


% This code will allow the user to interact and play against the computer
% in a game of Tic Tac Toe. all the user has to do is follow the prompts
% that show up on the screen.'

% Tested using Matlab version R2023a
% Tested on Lenovo P53s, Windows 11 Pro

% Last updated: 9/19/23

%% Tic Tac Toe Code
clc
clear

% Welcome Message
disp('Welcome To Tic Tac Toe!')

prompt = input('Would You Like To Play? Y/N:',"s"); % asking user to play

% Start of Game
while (prompt == "Y")
 
    gameBoard = zeros (3,3); % behind the scenes game board for scoring

    realGameBoard = ["1,1" "1,2" "1,3";"2,1" "2,2" "2,3";"3,1" "3,2" "3,3"];
    disp(realGameBoard) % display game board

    % First user move
    userMove = input('Enter the space number where you want to go [r,c]: ');
    r = userMove(1);
    c = userMove(2);
    gameBoard (r,c) = 1;
    realGameBoard (r,c) = "<strong>X</strong>";
    disp(realGameBoard)

    for i = 1:4
    
        % Computer move
        r = randi(3);
        c = randi(3);

        while gameBoard (r,c) ~= 0 % checks to see if space is already taken
            r = randi(3);
            c = randi(3);  
        end

        gameBoard (r,c) = -1;
        realGameBoard (r,c) = "<strong>O</strong>";
        disp('Computer Move:')
        disp(realGameBoard)

     
        % Check for computer win
        gameResults = [sum(gameBoard),sum(gameBoard')];
        gameResults (7) = gameBoard(1,1) + gameBoard(2,2) + gameBoard(3,3);
        gameResults (8) = gameBoard(3,1) + gameBoard(2,2) + gameBoard(1,3);
    
        if any(gameResults == -3)
            disp('Computer Wins!')
            break
        end

        % User next move
        userMove = input('Enter your next move [r,c]: ');
        r = userMove(1);
        c = userMove(2);

        while gameBoard (r,c) ~= 0 % checks to see if space is already taken
            userMove = input('Space already taken enter another space [r,c]: ');
            r = userMove(1);
            c = userMove(2);
        end

        gameBoard (r,c) = 1;
        realGameBoard (r,c) = "<strong>X</strong>";
        disp(realGameBoard)

        % Check for user win
        gameResults = [sum(gameBoard),sum(gameBoard')];
        gameResults (7) = gameBoard(1,1) + gameBoard(2,2) + gameBoard(3,3);
        gameResults (8) = gameBoard(3,1) + gameBoard(2,2) + gameBoard(1,3);

        if any(gameResults == 3)
            disp('You Win!')
            break
        end

    end

    % Check for tie
    if all(gameResults ~= 3) && (sum(sum(abs(gameBoard))) == 9)
        disp('Tie! Cat Wins!')
    end
    
    % Play again
    prompt = input('Would you like to play again? Y/N:',"s");
end

   disp('Thanks for playing come back again soon!')