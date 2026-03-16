BEGIN ~COISLEN~

// 2nd rencontre ********************************************************************************************************************************************************
IF ~Global("COM020_Duel_combat","COM020",1)~ THEN BEGIN 1

  SAY   @1=@2 /*  ~Passons aux choses sérieuses maintenant.~ ~Voyons voir si entre 4 yeux vous ne pissez pas dessus! (sourire dément)~  */ 
  IF ~~ THEN REPLY @3 /* ~On pourrait peut-être arrêter un instant et discuter un peu?~  */
       GOTO  2

  IF ~~ THEN REPLY @4 /* ~(ne rien répondre)~  */
     DO ~SetGlobal("COM020_Duel_combat","COM020",3)~
		 EXIT

END


IF ~~ THEN BEGIN 2

  SAY   @5 /*  ~On discutera quand vous serez mort et que je mangerai votre coeur.~  */ 
  IF ~~ THEN 
      DO ~SetGlobal("COM020_Duel_combat","COM020",3)~
      EXIT

END


IF ~Global("COM020_Duel_combat","COM020",2)~ THEN BEGIN 3

  SAY   @6=@7 /*  ~Je vois que je suis attendu. Intéressant...~ ~ Glabuk ramènes ton cul ici!~  */ 
  IF ~~ THEN REPLY @8 /* ~On pourrait peut-être arrêter un instant et discuter un peu?~  */
     DO ~SetGlobal("Glabuk_apparition","GLOBAL",1)~
     GOTO  2

  IF ~~ THEN REPLY @9 /* ~(ne rien répondre)~  */
     DO ~SetGlobal("COM020_Duel_combat","GLOBAL",3)
         SetGlobal("Glabuk_apparition","GLOBAL",1)~
		 EXIT

END


// groupe dans l'antre de Islendra ***************************************************************************************************************************************
IF ~Global("COM020_PNJ_capture","GLOBAL",0)
    Global("islendra_dial_antre","GLOBAL",0)~ THEN BEGIN 3

  SAY   @11 /*  ~Vous êtes encore là! A chaque fois c'est la même chose, ils ne comprennent que la mort.~  */ 
  IF ~~ THEN REPLY @12 /* ~Comment ça?~  */
     GOTO  4

  IF ~~ THEN REPLY @14 /* ~Qui êtes-vous?~  */
     GOTO 5
END


IF ~~ THEN BEGIN 4

  SAY   @13 /*  ~Vous pensiez être les premiers à prétendre au titre. Désolée de vous décevoir mais consolez-vous, vous allez les rejoindre sur le champ!~  */ 
  IF ~~ THEN 
     DO ~Enemy()
         SetGlobal("islendra_dial_antre","GLOBAL",1)~
     // journal intrigue sur le champion de Bhaal, il n'est pas le seul
     EXIT
END


IF ~~ THEN BEGIN 5

  SAY   @15=@16 /*  ~Qui je suis? Ah ah~ ~Je suis Islendra, la grande Chasseresse de Bhaal et ceci est MON territoire. Vous êtiez prévenus!~  */ 
  IF ~~ THEN 
     DO ~Enemy()
         SetGlobal("islendra_dial_antre","GLOBAL",1)~
     EXIT
END

