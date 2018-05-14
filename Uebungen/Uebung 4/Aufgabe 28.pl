% Author:
% Date: 5/9/2018

%select und insert
select(X,[X|Xs],Xs).
select(X,[Y|Ys],[Y|Rs]):- select(X, Ys,Rs).

%insert(Y,Xs,[Y|Rs]).
%insert(X,[Y|Ys],[Y|Rs]):- insert(X,Ys,Rs).
%insert(Y,Xs, [X|Xs]).
insert(X,Ys,Rs):- select(X,Rs,Ys).

%select
permutation([],[]).
permutation(Xs,[P|Ps]):- select(P,Xs,Rest), permutation(Rest,Ps).

%
permutationIn([],[]).
permutationIn(Xs,[P|Ps]):- insert(P,Xs,Rest), permutation(Rest,Ps).

