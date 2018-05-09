% Author:
% Date: 5/9/2018

listlength(nil, o).
listlength(list(X,Xs),s(N)):- listlength(Xs,N).

anz(X,nil,o).
%anz(X, list(X,Xs),s(N)):- anz(X,Xs,N).
anz(X, list(Y,Xs),N):- anz(X,Xs,N), N == s(N).