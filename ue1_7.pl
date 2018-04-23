% Author:
% Date: 4/21/2018
natSym(o).
natSym(s(X)).

f(a,b).
g(X).
f(g(c),b).
g(f(d,c)).
g(f(f(a,b),b)).

makeTree(g(f(f(a,b),a))).






%blatt(a).
%blatt(b).
%ast(a, g(a)).
%ast(b, g(d)).
%ast(c, f(a,b)).
%baum(b, baum(d, nil,nil), baum(c,nil,nil)).
%tiefe(nil, o).
%tiefe(baum(_,L,R), s(T)):- tiefe(L, L1), tiefe(R, R1), natSym(T).

%tiefe(baum(X,nil), Y):- natSym(X).
%tiefe(X, s(Y)):-  baum(X, K), tiefe(K, Y), natSym(Y) .

%wegLaenge(X,X,list(X,nil), o).
%wegLaenge(X,Y,list(X,Rest), s(L)) :-   connection(X,K), wegLaenge(K,Y, Rest,L), natSym(L).