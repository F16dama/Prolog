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

sigma(a).
sigma(b).

baseSigma(a).
baseSigma(b).
baseSigma(#).
baseSigma(cA).

startS(s0).

base(#).

% b

es().
es_plus().
sigma_star().

