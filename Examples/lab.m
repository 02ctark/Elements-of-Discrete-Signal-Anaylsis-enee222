
%2.1

% a)The semicolon is placed at the end of a statement/line of code to hide the output in the command window%


% b)
%xx = [ zeros(1,3), linspace(0,1,5), ones(1,4) ]
% A variable named xx, array variables are replaced. Element 1 to 3 the
% elements hold zero, linspace creates a starting 0 and end 1 with 5 values generated.
% the elements continue from the original elements with 4 elements of all
% values of 1

%xx(4:6)
% gives values in the array from element 4 to 6

%size(xx)
% number of rows and coloums

%length(xx)
% total number of elements

%xx(2:2:length(xx))
% values from the array starting at 2, incrementing by 2 and ending at the
% length of array (in this case 4)


% c)
%replace the even indexed elements (i.e., xx(2), xx(4), etc) with the constant π^π

xx = [ zeros(1,3), linspace(0,1,5), ones(1,4) ]
%set the array created to the variable yy
% to find even elements we create an array in yy that starts at 2 with
% increments of 2 till the end, those elements are set to pi^pi
yy = xx; yy(2:2:end) = pi.^pi


%2.2
% (a 

xk = cos( pi*(0:11)/4 ) %<---comment: compute cosines
% xk is computed from an array element 0 to 11. Each element is mulitplied
% by pi/4
% Element zero has a value of 1, then muliplied by pi/4, the cosine is
% taken and is value is root2/2
% ELement one has a value of 2, multiply by pi/4, and cosine is taken to
% get pi/2. The cosine of pi/2 is 0, the array is given.

% b)

yyy = [ ]; %<--- initialize the yy vector to be empty
for k=-5:5
yyy(k+6) = cos( k*pi/3 )
end
yyy

% k is set to a value of a positive integer to allow the loop to function








