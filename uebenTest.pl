% Author:
% Date: 6/12/2018


member(X,[X|Ys]).
member(X,[Y|Ys]):- member(X,Ys).

infix([X],[X|Ys]).
infix([X|Xs],[X|Ys]):- infix(Xs,Ys).
infix(Xs,[Y|Ys]):- infix(Xs,Ys).

add(X,o,X).
add(X,s(Y),s(R)):-add(X,Y,R).

knotenanz(e, o).
knotenanz(n(X,Lb,Rb),s(N)):- knotenanz(Lb,N1),knotenanz(Rb,N2),add(N1,N2,N).

postfix(Xs,Ys):- append(R1,R2,Ys),append(R3,Xs,R2).

addRechts(X,[],[X|[]).
addRechts(X,[Y|Ys],[Y|Rs]):- addRechts(X,Ys,Rs).

loescheRechts(Xs,Ys):- addRechts(_,Ys,Xs).

praefix(Xs,Ys):- append(Xs,Hs,Ys).