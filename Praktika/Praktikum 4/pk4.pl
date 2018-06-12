% Author:
% Date: 6/11/2018

% NEA = {Z, Sigma, delta, Z0,E}
%Z = {z0,z1,z2,z3}
%Sigma= {tick,tack}
%delta = transition
%z0 = {z0}
% E = {z3}

eZ(z0).
eZ(z1).
eZ(z2).
eZ(z3).

sigma(tick).
sigma(tack).

delta(z0,tick,z1).
delta(z1,tack,z3).
delta(z1,tack,z2).
delta(z2,tick,z1).
delta(z2,tick,z3).

delta(z0,[],z0).
delta(z1,[],z1).
delta(z2,[],z2).
delta(z3,[],z3).

startZ(z0).
endZ(z3).

%b

delta_stern(Z,[],Z):- eZ(Z), delta(Z,[],Z).
delta_stern(Z,[A|Ws],ZStrich):- delta(Z,A,ZStern), delta_stern(ZStern, Ws,ZStrich).

sigma_stern([]).
sigma_stern([A|Ws]):- sigma(A), sigma_stern(Ws).

lvonN(W):-  delta_stern().
