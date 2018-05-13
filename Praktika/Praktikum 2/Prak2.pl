% Author:
% Date: 5/9/2018
% Aufgabe 1

linListe(nil).
linListe(list(X,Xs)):- linListe(Xs).

%X ist Element von Ys
member(X,list(X,Ys)):- linListe(Ys).
member(X,list(Y,Ys)):- member(X,Ys),linListe(Ys).

%list(X,Xs) ist der Anfang von Ys
praefix(list(X,nil),list(X,Ys)).
praefix(list(X,Xs),list(X,Ys)):- praefix(Xs,Ys).

%List(X,Xs) ist in Ys vorhanden
infix(nil, Ys).
infix(list(X,Xs), list(X,Ys)):- infix(Xs,Ys).
infix(Xs, list(Y,Ys)):- infix(Xs,Ys).


% Aufgabe 2

% X + Y = R
add(o,X,X).
add(s(X),Y,s(R)):- add(X,Y,R).

% Xb ist ein binbaum wenn seine teilbaeume auch binbaeume sind
binbaum(e).
binbaum(n(X,Xb,Yb)):- binbaum(Xb), binbaum(Yb).

% Root stellt den ersten Knoten dar, Lb den Linken restbaum und Rb den rechten restbaum von Xb
construct(Root,Lb,Rb,n(Root,Lb,Rb)):- binbaum(Lb), binbaum(Rb) .

% N gibt die Anzahl der Knoten von Rb wieder
knotenanz(e, o):- binbaum(e).
knotenanz(n(_,Lb,Rb), s(N)):- knotenanz(Lb,Ln), add(Ln,Rn,N), knotenanz(Rb,Rn), binbaum(Lb), binbaum(Rb) .