% Author:
% Date: 5/9/2018

listlength([], o).
listlength([X|Xs],s(N)):- listlength(Xs,N).

anz(X,[],o).
anz(X, [X|Xs],s(N)):- anz(X,Xs,N).
anz(X, [Y|Xs],N):- anz(X,Xs,N).