% Author:
% Date: 5/9/2018

listlength([], 0).
listlength([X|Xs],N):- listlength(Xs,R),  N is R + 1.

anz(X,[],0).
anz(X, [X|Xs],N):- anz(X,Xs,R), N is R +1.
anz(X, [Y|Xs],N):- anz(X,Xs,N), X \= Y.