% Author:
% Date: 6/19/2018

% M = { z,sigma,kelleralphabet,delta, anfangsZ,Keller }
% Mpalin-ab
% states = {s0,s1}
% sigma= {a,b}
% baseSigma = {a,b,#, cA}
% startS = {z0}
% base #

states(s0).
states(s1).
states(s2).

sigma(a).
sigma(b).

baseSigma(a).
baseSigma(b).
baseSigma(#).
baseSigma(sA).


delta(s0,a,#,s0,[sA,#]).
delta(s0,a,sA,s0,[sA,sA]).
delta(s0,b,sA,s1,[]).
delta(s1,b,sA,s1,[]).
delta(s1,nix,#,s1,[]).


startS(s0).

base(#).

%b
lvonM(Ws) :- startS(Sz), base(K), es_plus(Sz, Ws, [K], Sn, Kn), sigma_stern(Ws).

es(S, W, [K|Ks], Sn, Kn) :- delta(S, W, K, Sn, Kr), append(Kr, Ks, Kn).

es_plus(E, [], [], E, []).
es_plus(S, Ws, Ks, Sn, Kn) :- es(S, nix, Ks, Sn, Kn), es_plus(Sn, Ws, Kn, Sn2, Kn2).
es_plus(S, [W|Ws], Ks, Sn, Kn) :- es(S, W, Ks, Sn, Kn), es_plus(Sn, Ws, Kn, Sn2, Kn2).

sigma_stern([]).
sigma_stern([W|Ws]) :- sigma(W), sigma_stern(Ws).
