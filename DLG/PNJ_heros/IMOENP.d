APPEND ~IMOENP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 /* <CHARNAME>, Ca y est les ducs ont fait de vous le Protecteur du peuple! Gorion doit vous regarder avec fierté et moi je suis ravie pour vous. Je suis fin prête à vous accompagner dans cette nouvelle aventure!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Impossible de me passer de toi. Rejoint moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([190.905])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~J'ai hâte de rejoindre ton groupe.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, tu es la bienvenue, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~MoveToPoint([190.905])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, tu pourrais être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Je suis déçue, j'espérais que nous resterions ensemble.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([190.905])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",190,905,10)~
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


APPEND ~IMOEN~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 /* <CHARNAME>, Ca y est les ducs ont fait de vous le Protecteur du peuple! Gorion doit vous regarder avec fierté et moi je suis ravie pour vous. Je suis fin prête à vous accompagner dans cette nouvelle aventure!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Impossible de me passer de toi. Rejoint moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([190.905])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @4 /* ~J'ai hâte de rejoindre ton groupe.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, tu es la bienvenue, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~MoveToPoint([190.905])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, tu pourrais être utile.~ */ 
    EXIT  
END



END
