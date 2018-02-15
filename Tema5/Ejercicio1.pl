sobre(d,c).
sobre(c,b).
sobre(b,a).
sobre(g,f).
sobre(f,e).
sobre(i,h).

izquierda(a,e).
izquierda(e,h).

por_encima_de(X,Y):-sobre(X,Y).
por_encima_de(X,Y):-sobre(X,Z), por_encima_de(Z,Y).

pila_izquierda(X,Y):- izquierda(X,Y).
pila_izquierda(X,Y):- izquierda(U,Y),por_encima_de(X,U). 
pila_izquierda(X,Y):- izquierda(X,U),por_encima_de(Y,U).
pila_izquierda(X,Y):- izquierda(U,V),por_encima_de(X,U),por_encima_de(Y,V).

/***********************
?- por_encima_de(X,Y).
X = d, Y = c ;
X = c, Y = b ;
X = b, Y = a ;
X = g, Y = f ;
X = f, Y = e ;
X = i, Y = h ;
X = d, Y = b ;
X = d, Y = a ;
X = c, Y = a ;
X = g, Y = e ;
***********************/

/***********************
?- por_encima_de(X,f);pila_izquierda(X,f).
X = g ;
X = a ;
X = b ;
X = d ;
X = c ;
***********************/

/***********************
?- por_encima_de(X,_),\+ pila_izquierda(X,_).
X = i ;
***********************/