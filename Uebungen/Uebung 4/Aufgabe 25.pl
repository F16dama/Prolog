% Author:
% Date: 5/9/2018

app([],Xs,Xs).
app([X|Xs],Ys,[X|Rs]):- app(Xs,Ys,Rs).

tiefe(e,[]).
tiefe(n(X,Lb,Rb),[X|Xs]):- tiefe(Lb,Ls),app( Ls, Rs ,Xs), tiefe(Rb,Rs).%, app(Ys,Xs,Rs).