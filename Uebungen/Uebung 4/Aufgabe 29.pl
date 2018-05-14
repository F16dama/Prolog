% Author:
% Date: 5/13/2018

invList([]).
invList([0|[]]).
invList([X,Y|Ys]):- invList([Y|Ys]), X is Y +1.

