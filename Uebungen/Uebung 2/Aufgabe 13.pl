% Author:
% Date: 4/26/2018

connection(a,b).
connection(a,c).
connection(a,d).
connection(a,e).

connection(b,c).
connection(b,d).
connection(b,e).

connection(c,d).

connection(e,c).
connection(e,d).

%Gibt den Pfad von X zu Y in R aus
wegStrecke(X,X,list(X,nil)).
wegStrecke(X,Y,list(X,R)) :-   connection(X,K), wegStrecke(K,Y, R).
