BEGIN ~OSWALP~

IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1 /* ~Protecteur, mon nom est Oswald et j'appartenais à la garde ducale. Mon bras est solide et mon coeur courageux. Je tiens à servir ma cité et je serai honnoré de mettre ma lame au service d'un héros tel que vous.~ */

 IF ~~  THEN 
   REPLY @2 /* ~Nous allons réaliser de grandes choses. Rejoint moi.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       JoinParty()~    
   EXIT

 IF ~global("OSWALDpourquoi","GLOBAL",0)~  THEN 
   REPLY @10  /* ~Pourquoi tu ne fais plus partie de la garde ducale?~ */
   DO ~setglobal("OSWALDpourquoi","GLOBAL",1)~
   GOTO 1

  IF ~~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([707.636])~
    EXIT
END



IF ~~ THEN BEGIN 1
 SAY @11 /* ~Pour être franc (géné), Macros voit des ennemis potentiels partout. Il a remplacé une grande partie de la garde dès son arrivée. De bon soldats ont été remerciés... Prenez moi dans votre équipe et vous ne le regretterez pas!~ */

 IF ~~ THEN
   REPLY @12 /* ~Nous allons réaliser de grandes choses. Rejoint moi.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       JoinParty()~    
   JOURNAL @13 /* ~Macros, responsable de la sécurité des ducs, a remplacé une grande partie de la garde ducale à son arrivée. D'après Oswald, ancien garde ducal, il voit des ennemis partout...~ */
   EXIT

 IF ~~  THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([707.636])~
   JOURNAL @13 /* ~Macros, responsable de la sécurité des ducs, a remplacé une grande partie de la garde ducale à son arrivée. D'après Oswald, ancien garde ducal, il voit des ennemis partout...~ */
   EXIT
   
END

// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @4 /* ~Je suis prêt si vous avez besoin de moi.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */  
    DO ~MoveToPoint([707.636])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    EXIT  
END

// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 3
  SAY @6 /* ~Je ne parviens même pas à rester dans votre groupe...~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([707.636])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",707,636,10)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~    
    EXIT   

END



BEGIN ~OSWALD~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1 /* ~Protecteur, mon nom est Oswald et j'appartenais à la garde ducale. Mon bras est solide et mon coeur courageux. Je tiens à servir ma cité et je serai honnoré de mettre ma lame au service d'un héros tel que vous.~ */

 IF ~~  THEN 
   REPLY @2 /* ~Nous allons réaliser de grandes choses. Rejoint moi.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       JoinParty()~    
   EXIT

 IF ~global("OSWALDpourquoi","GLOBAL",0)~  THEN 
   REPLY @10  /* ~Pourquoi tu ne fais plus partie de la garde ducale?~ */
   DO ~setglobal("OSWALDpourquoi","GLOBAL",1)~
   GOTO 1

 IF ~~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([707.636])~
    EXIT
END


IF ~~ THEN BEGIN 1
 SAY @11 /* ~Pour être franc (géné), Macros voit des ennemis potentiels partout. Il a remplacé une grande partie de la garde dès son arrivée. De bon soldats ont été remerciés... Prenez moi dans votre équipe et vous ne le regretterez pas!~ */

 IF ~~ THEN
   REPLY @12 /* ~Nous allons réaliser de grandes choses. Rejoint moi.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       JoinParty()~    
   JOURNAL @13 /* ~Macros, responsable de la sécurité des ducs, a remplacé une grande partie de la garde ducale à son arrivée. D'après Oswald, ancien garde ducal, il voit des ennemis partout...~ */
   EXIT

 IF ~~  THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
   JOURNAL @13 /* ~Macros, responsable de la sécurité des ducs, a remplacé une grande partie de la garde ducale à son arrivée. D'après Oswald, ancien garde ducal, il voit des ennemis partout...~ */
   EXIT
END

// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @4 /* ~Je suis prêt si vous avez besoin de moi.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */  
    DO ~MoveToPoint([707.636])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */  
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",707,636,10)~
    EXIT  
END






/*
// Dans le groupe *****************************************************************************************************************************
BEGIN ~OSWALJ~

Que puis-je pour toi?

Pourquoi as tu quitté ton poste de garde des ducs?

IF ~~ THEN BEGIN 1
 SAY @5 /* ~Pour être franc (géné), Macros voit des ennemis potentiels partout. Il a remplacé une grande partie de la garde dès son arrivée. De bon soldats ont été remerciés... Prenez moi dans votre équipe et vous ne le regretterez pas!~ */

 IF ~~ THEN
   REPLY @2  /* ~Je t'accepte avec plaisir dans mon équipe.~ */
   DO ~SetGlobal("Recrut","LOCALS",2)
       JoinParty()~    
   JOURNAL @6 /* ~Macros, responsable de la sécurité des ducs, a remplacé une grande partie de la garde ducale à son arrivée. D'après Oswald, ancien garde ducal, il voit des ennemis partout...~ */
   EXIT

 IF ~~  THEN 
   REPLY @4  /* ~Il n'y a pas de place pour toi dans mon groupe pour le moment.~ */
   JOURNAL @6 /* ~Macros, responsable de la sécurité des ducs, a remplacé une grande partie de la garde ducale à son arrivée. D'après Oswald, ancien garde ducal, il voit des ennemis partout...~ */
   EXIT
END

*/


