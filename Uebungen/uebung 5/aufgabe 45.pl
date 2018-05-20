% Author:
% Date: 5/20/2018


alph(tick).
alph(tack).

grammatik(X,[]).
grammatik(X,[Y|Ys]):- X \= Y  .

wort([]).
wort([X|Xs]):- grammatik(X,Xs),wort(Xs), alph(X).