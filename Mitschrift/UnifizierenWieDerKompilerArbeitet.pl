% Author:
% Date: 4/11/2018
kante(a,b).
kante(a,c).
kante(a,d).
kante(a,e).
kante(b,c).
kante(b,d).
kante(b,e).
kante(c,d).
kante(e,c).
kante(e,d).

wegStrecke(X,X,list(X,nil)).
wegStrecke(X,Y,list(X,R)) :-   kante(X,K), wegStrecke(K,Y, R).

%?- wegStrecke(a,d,Zs).

%nicht mit Fakt zu unifizieren, da X in 1 & 2 Argument und in Query 2 verschiedene Terme stehen

%aber unifizierbar mit linken Regelseite durch
%sub[ X/a, Z/d, list(a,Z1s)/Zs, Rest/Z1s]

%Ersetze linkstes Predikat in Query durch rechte Regelseite

%?- kante(a, Irgend), wegStrecke(Irgend,b,Z1s) [Zlist(a,Zs1)]
%sub[Irgend/b]
%?- wegStrecke(b,d,Z1s). [ZList(a,Z1s)]
%sub = [X/b, Y,d, Z1s/list(b,Z2s), Rests/Z2s]
%kante(b,Irgend), wegStrecke(Irgend,d,Z2s). [Zs/list(a,list(b,Z2s))]
%sub [Irgend/c]
%...

