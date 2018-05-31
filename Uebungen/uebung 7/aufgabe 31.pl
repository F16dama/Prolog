% Author:
% Date: 5/31/2018

remLast([X],[]).
remLast([X|Ys],[X|Rs]):- remLast(Ys,Rs).