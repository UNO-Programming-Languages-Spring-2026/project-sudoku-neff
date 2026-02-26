% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

x(1..4).
y(1..4).
n(1..4).
s(1..2).
% Given a coordinate cell (X, Y), there must be 1, and only 1, number from n, such that sudoku is correct
{sudoku(X, Y, N) : n(N)} = 1 :- x(X), y(Y).
:- sudoku(X,Y,N), sudoku(A,Y,N), X!=A.
:- sudoku(X,Y,N), sudoku(X,B,N), Y!=B.

#show sudoku/3.
