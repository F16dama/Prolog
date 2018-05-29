% Author:
% Date: 5/27/2018

alph(tick).
alph(tack).

s().
a().
i().

gramm([tick,tack]).
gramm([tick,tack|Xs]):- gramm(Xs).
gramm([tick,tack,tick]):.



wort([X|Xs]).