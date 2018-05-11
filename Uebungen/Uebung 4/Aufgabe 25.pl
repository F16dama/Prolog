% Author:
% Date: 5/9/2018

app(nil,Xs,Xs).
app(list(X,Xs),Ys,list(X,Rs)):- app(Xs,Ys,Rs).

tiefe(n(X,e,e),[X]).
tiefe(n(X,Lb,Rb),[X|Rs]):- tiefe(Lb,Xs).%,app(s, nil,Rs).%, tiefe(Rb,Xs), app(Ys,Xs,Rs).