BEGIN ~GEOFFRP~


// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1=@10 /* ~Le Protecteur de la porte de Baldur en chair et en os! Tout le peuple parle de vos exploits et Les crieurs annoncent que vous allez recruter des compagnons d'aventure.~  ~Je me présente à vous, je suis Geoffroy fils du seigneur du domaine Anxval. Ma lame est à votre service pour servir avec force et honneur la porte de Baldur.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Bien tu m'as convaincu. Je t'accepte dans mon groupe.~ */
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
  
  IF ~~ THEN 
    REPLY @11 /* ~Un noble qui veut être sous mes ordres. C'est pour le moins surprenant. Non?~ */
    GOTO 1

    
  IF ~~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([679.676])~
    EXIT
END


IF ~~ THEN BEGIN 1
  SAY @12  /* ~Un 2nd fils doit faire carrière par ses propres moyens. Etre au service du Protecteur de Baldur serait un grand honneur pour moi et ma famille~ */

  IF ~~ THEN
    REPLY @2 /* ~Bien tu m'as convaincu. Je t'accepte dans mon groupe.~ */
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~ 
     EXIT

  IF ~~ THEN
     REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
     DO ~SetGlobal("recrut_init","LOCALS",1)
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([679.676])~
     EXIT 
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @4 /* ~Je suis prêt à servir Baldur.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~MoveToPoint([679.676])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Retourne à l'auberge, ton coeur noble pourrait être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",679,676,10)~
    EXIT  
END


  // Exclu du groupe
  IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Quel dommage d'arrêter si tôt notre association.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([679.676])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",679,676,10)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~    
    EXIT 

END
  

BEGIN ~GEOFFRO~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1=@10 /* ~Le Protecteur de la porte de Baldur en chair et en os! Tout le peuple parle de vos exploits et Les crieurs annoncent que vous allez recruter des compagnons d'aventure.~  ~Je me présente à vous, je suis Geoffroy fils du seigneur du domaine Anxval. Ma lame est à votre service pour servir avec force et honneur la porte de Baldur.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Bien tu m'as convaincu. Je t'accepte dans mon groupe.~ */
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
  
  IF ~~ THEN 
    REPLY @11 /* ~Un noble qui veut être sous mes ordres. C'est pour le moins surprenant. Non?~ */
    GOTO 1

    
  IF ~~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([679.676])~
    EXIT
END


IF ~~ THEN BEGIN 1
  SAY @12  /* ~Un 2nd fils doit faire carrière par ses propres moyens. Etre au service du Protecteur de Baldur serait un grand honneur pour moi et ma famille~ */

  IF ~~ THEN
    REPLY @2 /* ~Bien tu m'as convaincu. Je t'accepte dans mon groupe.~ */
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~ 
     EXIT

  IF ~~ THEN
     REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
     DO ~SetGlobal("recrut_init","LOCALS",1)
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([679.676])~
     EXIT 
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @4 /* ~Je suis prêt à servir Baldur.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~MoveToPoint([679.676])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Retourne à l'auberge, ton coeur noble pourrait être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",679,676,10)~
    EXIT  
END



/*
C'est une drôle d'idée que vous avez là. Mais je saurai me débrouiller seul pour trouver une sortie.
*/
