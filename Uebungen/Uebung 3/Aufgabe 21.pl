% Author:
% Date: 5/4/2018

%a
tree(a,Xt,Yt).

%b
%X ist Wert des Baumes / Xb&Yb sind unterbaeume
binbaum(tree(X,nil,nil)).
binbaum(tree(X,Xb,Yb)):- binbaum(Xb), binbaum(Yb).

%c
%Y ist root element von Xb root(Xb,Y)
root(tree(Y,Xb,Yb),Y).

%left(Xb,Yb) Yb isr der linke Teilbaum von Xb
left(tree(_,Yb,_),Yb):- binbaum(Yb).
%right(Xb,Yb) Yb isr der rechte Teilbaum von Xb
right(tree(_,_,Yb),Yb):- binbaum(Yb).