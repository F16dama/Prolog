% Author:
% Date: 5/9/2018
% Aufgabe 1

linListe(nil).
linListe(list(X,Xs)):- linListe(Xs).

test(_).

%X ist Element von Ys
member(X,list(X,Ys)):- linListe(Ys).
member(X,list(Y,Ys)):- member(X,Ys),linListe(Ys).

%list(X,Xs) ist der Anfang von Ys
praefix(list(X,nil),list(X,Ys)).
praefix(list(X,Xs),list(X,Ys)):- praefix(Xs,Ys).

%List(X,Xs) ist in Ys vorhanden
%infix(nil, Ys).
%infix(list(X,Xs), list(X,Ys)):- praefix(list(X,Xs),list(X,Ys)).
%infix(Xs, list(Y,Ys)):- infix(Xs,Ys).

app(nil,Xs,Xs).
app(list(X,Ys),Xs,list(X,Rs)):- app(Ys,Xs,Rs).

infix(Xs,Ys):- app(R1s,R2s,Ys), app(R3s,Xs,R1s).


attach(X,nil,list(X,nil)).
attach(X,list(Y,Ys),list(Y,Xs)):- attach(X,Ys,Xs).

% Aufgabe 2

% X + Y = R
add(s(X),Y,s(R)):- add(X,Y,R).
add(o,X,X).


% Xb ist ein binbaum wenn seine teilbaeume auch binbaeume sind
binbaum(e).
binbaum(n(X,Xb,Yb)):- binbaum(Xb), binbaum(Yb).

% Root stellt den ersten Knoten dar, Lb den Linken restbaum und Rb den rechten restbaum von Xb
construct(Root,Lb,Rb,n(Root,Lb,Rb)):- binbaum(Lb), binbaum(Rb) .

% N gibt die Anzahl der Knoten von Rb wieder
knotenanz(e, o):- binbaum(e).
knotenanz(n(_,Lb,Rb), s(N)):- knotenanz(Lb,Ln), add(Ln,Rn,N), knotenanz(Rb,Rn), binbaum(Lb), binbaum(Rb) .
