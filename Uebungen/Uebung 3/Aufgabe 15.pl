% Author:
% Date: 5/3/2018

node(1,6).
node(1,3).
node(1,5).
node(6,9).
node(6,4).
node(4,12).
node(12,14).
node(3,2).
node(2,9).
node(2,8).
node(2,11).
node(5,7).
node(5,8).
node(5,10).
node(8,9).
node(8,4).



path(X,Y):- node(X,_),node(_,Y),depthfirst(X,Y,R).

%test(X,_,X):- node(X,_).


%depthfirst(X,Y,R):- depthfirst(X,[X],Y,R).
%depthfirst(Y,P,Y,R):- R= P,!.
%depthfirst(X,P,Y,R):- node(X,X1), not(member(X1,P)), depthfirst(X1,[X1|P],Y).

%tail(nil,X,X).
%tail(X,Y,Z):- node(X,R), tail(R,Y,Z), \+node(X,R).

%head(list(X,Xs), X).

%tail(list(X, nil), X).
%tail(list(X,Xs), Y):-tail(Xs,Y).

%depth(X,nil).
%depth(S,R):- node(S,Y), depth(Y,S).
%theTree(tree(1,tree(6,tree(9,nil,nil,nil),nil,tree()),tree(3),tree(5)).

