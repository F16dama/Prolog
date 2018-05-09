% Author:
% Date: 5/9/2018

binbaum(e).
binbaum(n(X,Lb,Rb)):- binbaum(Lb), binbaum(Rb).

natSym(o).
natSym(s(X)).

height(e,o).
height(n()).

functs().

varcons().