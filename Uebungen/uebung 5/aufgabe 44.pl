% Author:
% Date: 5/19/2018
%a
alphab(a).
alphab(b).

%b    / d
wortab([]).
wortab([X|Xs]):- wortab(Xs), alphab(X).

