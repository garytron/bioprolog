/********* SISTEMA EXPERTO DE PINOS ESPAÑOLES **************/
pino(Hojas,Aciculas,TamHojas,TamAciculas,Crit1,Pinas,Crit2,Crit3) :-
  (Hojas = planas ->
    write('No es un pino.'), nl
  ; Hojas = aciculas ->
    tipoAciculas(Aciculas,TamHojas,TamAciculas,Crit1,Pinas,Crit2,Crit3), nl
  ).

errorPino :- write('Es un pino, pero se trata de una especie no recogida en la clave.').

tipoAciculas(Aciculas,TamHojas,TamAciculas,Crit1,Pinas,Crit2,Crit3):-
  (Aciculas = aisladas ->
    write('No es un pino, posiblemente se trata de una especie de la misma familia y otro género posiblemente un abeto, o un cedro.'), nl; 
   Aciculas = dosgrupos ->
    tamAciculas(TamAciculas,Crit1,Pinas,Crit2,Crit3), nl;
   Aciculas = tresgrupos ->
    tipoHojas(TamHojas), nl;
    errorPino, nl
  ).

tipoHojas(TamHojas):-
  (TamHojas = verdeclaro ->
    write('Pino canario (Pinus canariensis)'), nl; 
   TamHojas = verdevivo ->
    write('Pino insigne (Pinus radiata)'), nl;   
    errorPino, nl
  ).

tamAciculas(TamAciculas,Crit1,Pinas,Crit2,Crit3):-
  (TamAciculas = cortas ->
    descripcionPino(Crit1), nl; 
   TamAciculas = largas ->
    tamPina(Pinas,Crit2,Crit3), nl;   
    errorPino, nl
  ).

descripcionPino(Crit1):-
  (Crit1 = desprende ->
    write('Pino albar (Pinus sylvestris)'), nl; 
   Crit1 = gancho ->
    write('Pino negro (Pinus uncinata)'), nl;   
    errorPino, nl
  ).

tamPina(Pinas,Crit2,Crit3):-
  (Pinas = pequenias ->
    formaPina(Crit2), nl; 
   Pinas = grandes ->
    formaPino(Crit3), nl;   
    errorPino, nl
  ).

formaPina(Crit2):-
  (Crit2 = flexibles ->
    write('Pino carrasco (Pinushalepensis)'), nl; 
   Crit2 = rigidas ->
    write('Pino larico (Pinus nigra)'), nl;   
    errorPino, nl
  ).

formaPino(Crit3):-
  (Crit3 = aparasolado ->
    write('Pino piñonero (Pinus pinea)'), nl; 
   Crit3 = irregular ->
    write('Pino negral o resinero (Pinus pinaster)'), nl;   
    errorPino, nl
  ).