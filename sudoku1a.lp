% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

x(1..4).
y(1..4).
n(1..4).
% Given a coordinate cell (X, Y), there must be 1, and only 1, number from n, such that sudoku is correct
{sudoku(X, Y, N) : n(N)}=1 :- x(X), y(Y).

sudoku(X, Y, N) :- initial(X, Y, N).

% I reversed the order of these when doing a lot of other changes and dont want to risk it breaking
% So it will stay like this for the time being
:- sudoku(X,Y,N), sudoku(X,B,N), Y!=B.
:- sudoku(X,Y,N), sudoku(A,Y,N), X!=A.

#show sudoku/3.
