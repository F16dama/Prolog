% Author:
% Date: 4/26/2018
natSym(o).
natSym(s(X)).

natList(nil):- natSym(X).
natList(list(X,Rest)):- natSym(X), natList(Rest).

invList(nil).
invList(list(o,nil)).
invList(list(s(Y),list(Y,Rs))):- invList(list(Y,Rs)).

%invList(list(o,nil)).
%invList(list(s(X),Rest)):- invList(Rest).