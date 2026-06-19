APPEND ~EDWINP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 /* ~Inutile de me remercier, je sais que sans moi vous n'avez l'ombre d'une chance de rester Protecteur. Tout le monde ne peut pas avoir avec mon immense potentiel...~ */
  IF ~~ THEN 
    REPLY @2 /* ~Edwin, vous m'avez manqué, joint toi à moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, ton intellect démeusuré pour m'être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([340.807])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~On a enfin compris que ma présence était nécessaire? (certains sont beaucoup plus lent que d'autres...)~ */
  IF ~~ THEN 
    REPLY @5 /* ~oui, joint toi à moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, ton intellect démeusuré pour m'être utile.~ */ 
    DO ~MoveToPoint([340.807])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, ton intellect démeusuré pour m'être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Quel manque de discernement... Vous vous en mordrez les doigts c'est évident.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, ton intellect démeusuré pour m'être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([340.807])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, ton intellect démeusuré pour m'être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",340,807,10)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~    
    EXIT   

END
  

END


APPEND ~EDWIN~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 /* ~Inutile de me remercier, je vais diriger votre groupe. Je sais que sans moi à la tête du groupe vous n'avez l'ombre d'une chance de rester Protecteur. Tout le monde ne peut pas naitre avec mon immense potentiel...~ */
  IF ~~ THEN 
    REPLY @2 /* ~Edwin, vous m'avez manqué, joint toi à moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, ton intellect démesuré pour m'être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([340.807])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~On a enfin compris que ma présence était nécessaire? (certains sont beaucoup plus lent que d'autres...)~ */
  IF ~~ THEN 
    REPLY @5 /* ~oui, joint toi à moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, ton intellect démeusuré pour m'être utile.~ */ 
    DO ~MoveToPoint([685.215])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, ton intellect démeusuré pour m'être utile.~ */ 
    EXIT  
END



END
