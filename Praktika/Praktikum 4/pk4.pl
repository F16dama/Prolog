% Author:
% Date: 6/11/2018

% NEA = {Z, Sigma, delta, Z0,E}
%Z = {z0,z1,z2,z3}
%Sigma= {tick,tack}
%delta = transition
%z0 = {z0}
% E = {z3}

eZ(z0).
ez(z1).

sigma(a).
sigma(b).

delta(z0,a,z1).
delta(z0,b,z1).
delta(z1,a,z0).
delta(z1,b,z0).

delta(z0,[],z0).
delta(z1,[],z1).

startZ(z0).
endZ(z0).
%endliche Zustandsmenge
%eZ(z0).
%eZ(z1).
%eZ(z2).
%eZ(z3).

%Alphabet sigma
%sigma(tick).
%sigma(tack).

%Transitionsfunktion delta (zustandAlt,uebergangsZeichen, zustandNeu)
%delta(z0,tick,z1).
%delta(z1,tack,z3).
%delta(z1,tack,z2).
%delta(z2,tick,z1).
%delta(z2,tick,z3).

%delta(z0,[],z0).
%delta(z1,[],z1).
%delta(z2,[],z2).
%delta(z3,[],z3).

%Startzustand z0
%startZ(z0).
%Endzustand E
%endZ(z3).

%b

%Transformatorfunktion (Zalt, zeichenListe, Zneu)
delta_stern(S,[],S):- eZ(S), delta(S,[],S).
delta_stern(S,[A|Ws],Sq):- delta(S,A,Sstar), delta_stern(Sstar, Ws,Sq).

sigma_stern([]).
sigma_stern(Ws):- sigma_stern(Hs),sigma(H),append([H],Hs,Ws).

lvonN(Ws):-  startZ(S0),sigma_stern(Ws),endZ(E), delta_stern(S0,Ws,E).
