% Author:
% Date: 5/22/2018

%Aufgabe 1

%list(X,Xs) ist der Anfang von Ys
praefix([X],[X|Ys]).
praefix([X|Xs],[X|Ys]):- praefix(Xs,Ys).

%Ys endet mit der Liste Xs
postfix(Xs,Ys):- reverse(Ys,Rys), reverse(Xs,Rxs), praefix(Rxs,Rys).


%Aufgabe 2
binbaum(e).
binbaum(n(_,Lb,Rb)):- binbaum(Lb), binbaum(Rb).

%Xb enthaelt den Eintrag X

memb(X,n(X,Lb,Rb)):- binbaum(Lb),binbaum(Rb).
memb(X,n(Y,Lb,Rb)):- memb(X,Lb),binbaum(Lb),binbaum(Rb).
memb(X,n(Y,Lb,Rb)):- memb(X,Rb),binbaum(Lb),binbaum(Rb).

%Aufgabe 3

%Ys wird an Xs gehaengt
app([],Xs,Xs).
app([X|Xs],Ys,[X|Rs]):- app(Xs,Ys,Rs).

%Ys is preorder list of tree Xb
praeorder(e,[]).
praeorder(n(X,Lb,Rb),[X|Rs]):- praeorder(Lb,R1s),praeorder(Rb,R2s),app(R1s,R2s,Rs).
praeorder(e,[]).
%Ys is postorder list of tree Xb
postorder(e, []).
postorder(n(X,Lb,Rb), Ts):- postorder(Lb,Ls), postorder(Rb,Rs),app(Ls,Rs,Xs),app(Xs,[X],Ts).

%Ys is some List
roots([],[]).
roots([n(X,_,_)|Xbs],[X|Rs]):- roots(Xbs,Rs).






% Root stellt den ersten Knoten dar, Lb den Linken restbaum und Rb den rechten restbaum von Xb
construct(Root,Lb,Rb,n(Root,Lb,Rb)):- binbaum(Lb), binbaum(Rb) .

mirror(e, e).
mirror(n(X,Lb,Rb),Xb):- mirror(Lb,L1),mirror(Rb,R1), construct(X,R1,L1,Xb).

