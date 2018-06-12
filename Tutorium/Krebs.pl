% Author:
% Date: 6/5/2018

% V E S P
%V = S
%E= {a,b}
%S = S
%P { S-> "", S -> aSa, S-> bSb,
%    S -> a ,S -> b }

vari(s).
sigma(a).
sigma(b).
start(s).

regel([s], []).
regel([s],[a,s,a]).
regel([s],[b,s,b]).
regel([s],[a]).
regel([s],[b]).

sigmas([]).
sigmas([A|Ws]):- sigma(A), sigmas(Ws).

redrel(As,Bs):- regel(Ls,Rs), append(A1s,Ls,H1s),append(H1s,A2s,As), append(A1s,Rs,H2s), append(H2s,A2s,Bs).

redRelTrans(Xs,Ys):- redrel(Xs,Ys).
redRelTrans(Xs,Ys):- redrel(Xs,Hs),redrel(Hs,Ys).

lvong(Ws):- start(S),redRelTrans([S],Ws),sigmas(Ws).

