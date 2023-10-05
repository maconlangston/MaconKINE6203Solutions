function [output] = primeCheck(number)
% This function will test to see if a number is prime or not prime. It
% takes 1 input which is a number. It returns the text 'true' if the number
% is prime. It returns the text 'false' if the number is not prime.
prime = isprime(number);

if (prime == 1)
    output = 'true';
else
    output = 'false';
end

end