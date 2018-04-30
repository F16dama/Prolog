% Author:
% Date: 4/27/2018
%Gibt das erste Element (X) fuer die liste Xs aus


%Erstes Element X ist head der Liste
head(list(X,nil),X).
head(list(X,Xs),X).

%Letztes Element Y ist tail der Liste(X,Xs)
tail(list(X,nil),X).
tail(list(X,Xs),Y):- tail(Xs, Y).

%Die Liste mit head R
append(nil,list(Y,nil), list(Y,nil)).
append(nil,list(Y,Ys),list(Y,Rs)):- append(nil, Ys ,Rs).
append(list(X,nil),list(Y,Ys),list(X,Rs)):- append(nil,list(Y,Ys),Rs).
append(list(X,Xs),list(Y,Ys),list(X,Rs)):- append(Xs,list(Y,Ys),Rs).

app(nil,Ys,Ys).
app(list(X,Xs),Ys,list(X,Rs)):- app(Xs,Ys,Rs).


anotherTest(list(X,nil),list(X,nil)).
anotherTest(list(X,Xs),list(X,Rs)):- anotherTest(Xs,Rs).


