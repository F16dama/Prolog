% Author:
% Date: 4/27/2018
%Gibt das erste Element (X) fuer die liste Xs aus



head(list(X,nil),X).
head(list(X,Rest),X).

tail(list(X,nil),X).
tail(list(Xs,Rest),X):- tail(Rest, X).