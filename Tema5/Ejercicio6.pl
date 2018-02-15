//progenitor (X,Y) son hechos dados. X es padre o Madre de Y

descendiente(X,Y,1):- progenitor(Y,X).
descendiente(X,Y,N):- progenitor(Y,Z), descendiente(X,Z,M), N is M + 1.

parentesco(X,Y,N):- descendiente(X,Y,N),!.
parentesco(X,Y,N):- descendiente(Y,X,N),!.
parentesco(X,Y,N):- \+(X=Y), descendiente(X,Z,M), descendiente(Y,Z,M), N is M + R,!.
parentesco(X,Y,N):- \+(X=Y), descendiente(Z,X,M), descendiente(Z,Y,M), N is M + R,!.
parentesco(X,Y,0).