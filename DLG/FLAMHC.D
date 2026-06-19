BEGIN ~FLAMHC~

IF  ~GLOBAL("discut_gardes_HC","GLOBAL",0)~   THEN BEGIN 0
  SAY @1 /* ~Protecteur, un vieil homme vous attend dans votre chambre.~ */

  IF ~~ THEN  
    REPLY @2 /* ~Qu'est ce que vous faites ici?~ */
    GOTO 1
    
  IF ~~ THEN  
    REPLY @3 /* ~(ne rien répondre)~ */
    EXIT
END

IF  ~~   THEN BEGIN 1
  SAY @4 /* ~Nous gardons votre auberge sur ordre de Macros le noir.~ */
  
  IF ~~ THEN  
    REPLY @5 /* ~Je n'ai besoin de personne pour assurer ma sécurité.~ */
    DO ~SETGLOBAL("discut_gardes_HC","GLOBAL",1)~
    GOTO 2
    
  IF ~~ THEN
    REPLY @6 /* ~A part le palais et mon auberge, vous gardez d'autres lieux?~ */
    GOTO 3
END

IF  ~~   THEN BEGIN 2
  SAY @7 /* ~Les ordres sont les ordres.~ */

  IF ~~ THEN  
    JOURNAL @8 /* ~Macros a donné l'ordre de faire garder mon auberge. Pour qui il se prend, je n'ai rien demandé.~ */
    EXIT
END

IF  ~~   THEN BEGIN 3
  SAY @9 /* ~Oui, nous gardons la maison où vous avez vaincu Koveras. Elle est sous bonne garde.~ */

  IF ~~ THEN 
    DO ~SETGLOBAL("discut_gardes_HC","GLOBAL",1)~ 
    JOURNAL @10 /* ~Macros a donné l'ordre de faire garder mon auberge. Il en va de même pour la maison où j'ai tué Sarevok.~ */
    EXIT
END