% Author:
% Date: 5/9/2018

binbaum(e).
binbaum(n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).

natSym(o).
natSym(s(X)).

max(X,Y,Y):- X =< Y.
max(X,Y,X):- Y =< X.


height(e,0).
height(n(_,Lb,Rb), N):- height(Lb,Ln),height(Rb,Rn), N is 1 + max(Ln,Rn) .

functs(e,0).
functs(n(_,Lb,Rb),N):- functs(Lb,L1),functs(Rb,R1), N is 1 + R1 + L1.

varcons().