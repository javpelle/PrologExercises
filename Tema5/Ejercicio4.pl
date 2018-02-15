estar(a,d,norte).
estar(d,g,norte).
estar(b,e,norte).
estar(e,h,norte).
estar(c,f,norte).
estar(f,i,norte).
estar(a,b,oeste).
estar(b,c,oeste).
estar(d,e,oeste).
estar(e,f,oeste).
estar(g,h,oeste).
estar(h,i,oeste).

estar(X,Y,sur):- estar(Y,X,norte).
estar(X,Y,este):- estar(Y,X,oeste).

estarTrans(X,Y,D):- estar(X,Y,D).
estarTrans(X,Y,D):- estar(X,Z,D),estarTrans(Z,Y,D).

situacion(X,Y,D):- estarTrans(X,Y,D).
situacion(X,Y,noroeste):- estarTrans(X,Z,norte), estarTrans(Z,Y,oeste).
situacion(X,Y,noreste):- estarTrans(X,Z,norte), estarTrans(Y,Z,oeste).
situacion(X,Y,suroeste):- estarTrans(X,Z,sur), estarTrans(Z,Y,oeste).
situacion(X,Y,sureste):- estarTrans(X,Z,sur), estarTrans(Y,Z,oeste).