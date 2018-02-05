/********* SISTEMA EXPERTO DE PINOS ESPAÑOLES **************/

pino(Hojas,Aciculas,TamAciculas,Crit1,Pinas,Crit2,Crit3,TamHojas):- 
hojas(Hojas,Aciculas,TamAciculas,Crit1,Pinas,Crit2,Crit3,TamHojas). 

hojas(planas,_,_,_,_,_,_,_):- write('No es un pino.').
hojas(aciculas,Aciculas, TamAciculas,Crit1,Pinas,Crit2,Crit3,TamHojas):- 
tipoAciculas(Aciculas,TamAciculas,Crit1,Pinas,Crit2,Crit3,TamHojas).
tipoAciculas(aisladas,_,_,_,_,_,_):- write('No es un pino, posiblemente se trata de una especie de la misma familia y otro g&eacute;nero posiblemente un abeto, o un cedro.').
tipoAciculas(dosgrupos,TamAciculas,Crit1,Pinas,Crit2,Crit3,_):- 
tamAciculas(TamAciculas,Crit1,Pinas,Crit2,Crit3).
tipoAciculas(tresgrupos,_,_,_,_,_,TamHojas):- tipoHojas(TamHojas).
tipoAciculas(x,_,_,_,_,_,_):- errorPino.
tamAciculas(cortas, Crit1,_,_,_):- crit1(Crit1).
tamAciculas(largas,_,Pinas,Crit2,Crit3):- pinas(Pinas,Crit2,Crit3).
pinas(pequenias,Crit2,_):- crit2(Crit2).
pinas(grandes,_,Crit3):- crit3(Crit3).

/********** 8 Pinos ************/

tipoHojas(verdeclaro):- write('Pinus canariensis').
tipoHojas(verdevivo):- write('Pinus radiata').
tipoHojas(x):- errorPino.

crit1(desprende):- write('Pinus sylvestris').
crit1(gancho):- write('Pinus uncinata').
crit1(x):- errorPino.
crit2(flexibles):-write('Pinus halepensis').
crit2(rigidas):-write('Pinus nigra').
crit2(x):- errorPino.
crit3(aparasolado):- write('Pinus pinea').
crit3(irregular):- write('Pinus pinaster').
crit3(x):- errorPino.

errorPino :- write('Es un pino, pero se trata de una especie no recogida en la clave.').