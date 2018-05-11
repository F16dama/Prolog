% Author:
% Date: 5/9/2018
% Aufgabe 1

linListe(nil).
linListe(list(X,Xs)):- linListe(Xs).

member(X,list(X,Ys)):- linListe(Ys).
member(X,list(Y,Ys)):- member(X,Ys),linListe(Ys).

%list(X,Xs) ist der Anfang von Ys
infix(list(X,nil),list(X,Ys)).
infix(list(X,Xs),list(X,Ys)):- praefix(Xs,Ys).

% Aufgabe 2

add(o,X,o).
add(s(X),Y,s(R)):- add(X,Y,R).

binbaum(e).
binbaum(n(X,Xb,Yb)):- binbaum(Xb), binbaum(Yb).

construct(Root,Lb,Rb,n(Root,Lb,Rb)):- binbaum(Lb), binbaum(Rb) .

knotenanz(e, o).
knotenanz(n(X,Lb,Rb), s(N)):- knotenanz(Lb,Ln), knotenanz(Rb,Rn), add(Ln,Rn,R1), add(s(o),R1,N).