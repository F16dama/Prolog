% Author:
% Date: 5/9/2018

tiefe(n(X,e,e),[X]).
tiefe(n(X,Lb,Rb),[X|Xs]):- tiefe(Lb,Xs).
tiefe(n(X,Lb,Rb),[X|Xs]):- tiefe(Rb,Xs).