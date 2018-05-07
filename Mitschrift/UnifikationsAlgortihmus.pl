% Author:
% Date: 5/3/2018

%Unifikations Algorithmus

% Query(s)/Regel(t)| Variable X Y   |  Konstante   |  Term mit Funktor
%                  |________________|______________|___________________
% Variable         |       1        |      4       |         4
% Konstante        |       1        |      2       | 2 -> nicht unifizierbar
% Term mit Funktor |       1        |    3->n.u    |        3

%app(nil,Xs,Xs).
%app(list(X,X1s),Ys,list(X,X2s)):- app(X1s,Ys,X2s).

%?- app(list(Z1,list(c,Z2s)),nil,list(Z3,list(Z4,nil))) out =[]
% mgu = [X/Z1{Fall 1-Z1 wird Z3},X1s/list(a,Z2s){Fall 1},Ys/nil{Fall 1},Z1/Z3{},X2s/list(Z4s,nil}]
