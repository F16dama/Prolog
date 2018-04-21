% Author:
% Date: 4/21/2018

blatt(a).
blatt(b).
ast(a, g(a)).
ast(b, g(d)).
ast(c, f(a,b)).

baum(b, baum(d, nil)).

tiefe(X, s(Y)):- baum(X, K), tiefe(K, Y) .