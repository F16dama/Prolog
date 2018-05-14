% Author:
% Date: 5/9/2018

binbaum(e).
binbaum(n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).

natSym(o).
natSym(s(X)).

%max(X,Y,Y):- X =< Y.
%max(X,Y,X):- Y =< X.
maxi(o,X,X).
maxi(X,o,X).
maxi(s(X),s(Y),s(R)):- maxi(X,Y,R), X\= Y.


add(o,X,X).
add(s(X),Y,s(R)):- add(X,Y,R).

%height(e,0).
%height(n(_,Lb,Rb), N):- height(Lb,Ln),height(Rb,Rn), N is 1 + max(Ln,Rn) .
height(e,o).
height(n(_,Lb,Rb), N):- height(Lb,Ln),maxi(Ln,Rn,N), height(Rb,Rn).%,add(s(o),Mn,N) .

functs(e,o).
functs(n(_,Lb,Rb),s(N)):- functs(Lb,L1),add(L1,R1,N),functs(Rb,R1).



varcons(e,s(o)).
varcons(n(_,Lb,Rb),s(N)):- varcons(Lb,L1),add(L1,R1,N),varcons(Rb,R1).
