% Author:
% Date: 5/4/2018

const(a).
const(b).
const(c).

vari(vX).
vari(vY).
vari(vZ).

tree(X):- const(X).
tree(X):- vari(X).
tree(Xb):- tree(Xb).
tree(f(X1b, X2b)):-tree(X1b), tree(X2b).
tree(h(X1b,X2b,X3b)):- tree(X1b), tree(X2b), tree(X3b).
