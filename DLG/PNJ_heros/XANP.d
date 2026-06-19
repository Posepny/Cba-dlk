APPEND ~XANP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 = @10 /* ~<CHARNAME>, vous m'avez libéré des mines de Nashkel et vous avez réussi à déjouer les manigances du Trône de fer là où j'ai échoué. 
  Je me rappele encore de toutes ces journées enfermées...~ ~En tant que Grismanteau d'Evereska, mon devoir est de surveiller les événements politiques des nations humaines le long de nos frontières. 
  Quand à vous, vous avez besoin d'un bon mage dans votre groupe pour assurer la paix à Baldur. Nos intérêts sont communs Protecteur. Qu'en pensez vous?~*/
  IF ~~ THEN 
    REPLY @2 /* ~Oui l'union fait la force. Rejoint moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([195.871])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~C'est un grand plaisir de vous revoir. Je suppose que nous allons travailler ensemble?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    DO ~MoveToPoint([195.871])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Notre association a été productive. J'en suis heureux.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([195.871])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
   REPLY @7 /* ~Retourne à l'auberge, nous pourrons sans doute nous entre aider.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",195,871,10)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~    
    EXIT 

END
  

END


APPEND ~XAN~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 = @10 /* ~<CHARNAME>, vous m'avez libéré des mines de Nashkel et vous avez réussi à déjouer les manigances du Trône de fer là où j'ai échoué. 
  Je me rappele encore de toutes ces journées enfermées...~ ~En tant que Grismanteau d'Evereska, mon devoir est de surveiller les événements politiques des nations humaines le long de nos frontières. 
  Quand à vous, vous avez besoin d'un bon mage dans votre groupe pour assurer la paix à Baldur. Nos intérêts sont communs Protecteur. Qu'en pensez vous?~*/
  IF ~~ THEN 
    REPLY @2 /* ~Oui l'union fait la force. Rejoint moi. ~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([195.871])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~C'est un grand plaisir de vous revoir. Je suppose que nous allons travailler ensemble?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    DO ~MoveToPoint([195.871])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    EXIT  
END

END