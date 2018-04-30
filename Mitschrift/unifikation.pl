% Author:
% Date: 4/30/2018

%Unifikation
%Def Gegeben 2 Praedikate (Terme) T und s.
% - Die beiden Praedikate heissen unifizierbar, wenn es einen Unifikator von t & s gibt.
% - Eine Substitution sub heisst Unifikation von t&s, wenn gilt: tsub = ssub
% Beispiel: linke Regelseite: vater(gott,X) query: vater(Z,abraham)
% sub = [Z/gott,X/abraham] in beide Richtungen unifizierbar => unifikator

%BSP:
%Konkatenation
%Fakt -> app(nil,Xs,Xs).
%P -> app(list(X,X1s),Ys,list(X,X2s)):- app(X1s,Ys,X2s).

%Query:
%app(list(Z1,list(a,Z2s)),nil ,list(Z3,list(Z4,nil))).

%Q unifizierbar mit Fakt ?
%Nein, 1 Argument in Fakt : nil in Q list(...)

%Q unifizierbar mit linker Regelseite P ?
% Ja, mit Unifikator sub = [X/Z3,X1s/list(a,Z2s),Ys/nil,Z1/Z3,X2s/list(Z4,nil)]

%Psub = app(list(Z3,list(a,Z2s)),nil,list(Z3,list(Z4,nil)))

% Qsub = app(list(Z3,list(a,Z2s)),nil,list(Z3,list(Z4,nil)))

%Beh: sub ist allgemeiner als sub'
% Zeige Es gibt ein sub'', so dass gilt: sub' = sub subb''

%sub' = [X/a,Z1/a,X1s/list(a,nil),Z2s/nil,Ys/nil, Z3/a, X2s/list(a,nil),Z4/a]
%sub'' = [Z3/a, Z2s/nil, Z4/a]
%sub' = sub sub'' = [X/a,X1s/list(a,nil), Ys/nil, Z1/a,X2s/list(a,nil), (ab hier sub'') Z3/a,Z2s/nil,Z4/a]

