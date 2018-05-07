% Author:
% Date: 5/4/2018

natSym(o).
natSym(s(X)).
%N ist die Elementanzahl von Xs
anz(nil,o).
anz(list(_,Xs),s(N)):- anz(Xs,N), natSym(N).

%list(X,Xs) ist der Anfang von Ys
praefix(list(X,nil),list(X,Ys)).
praefix(list(X,Xs),list(X,Ys)):- praefix(Xs,Ys).