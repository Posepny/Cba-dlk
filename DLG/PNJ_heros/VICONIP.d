APPEND ~VICONIP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1 /* ~<CHARNAME> où que j'aille en surface ma peau noire ne plait pas...Pourtant, je n'ai fait que me défendre jusqu'à présent! Prends moi dans ton groupe et mon pouvoir sera tien! Je montrerai que j'ai ma place ici.~*/
  IF ~~ THEN 
    REPLY @2 /* ~Tu as bien fait de venir. Joignes toi à moi et ensemble nous prouverons ta valeur au peuple de Baldur.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tes talents pourraient être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([595.335])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Donnez moi une chance de prouvez ma valeur.~ */
  IF ~~ THEN 
    REPLY @5 /* ~J'accepte, tu peux rejoindre mon groupe.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes talents pourraient être utile.~ */ 
    DO ~MoveToPoint([595.335])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, tes talents pourraient être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Merci de m'avoir donné ma chance. J'espère que nous ferons rapidement de nouveau équipe.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tes talents pourraient être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([595.335])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tes talents pourraient être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",595,335,10)~
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


APPEND ~BGVICONI~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1 /* ~<CHARNAME> où que j'aille en surface ma peau noire ne plait pas...Pourtant, je n'ai fait que me défendre jusqu'à présent! Prends moi dans ton groupe et mon pouvoir sera tien! Je montrerai que j'ai ma place ici.~*/
  IF ~~ THEN 
    REPLY @2 /* ~Tu as bien fait de venir. Joignes toi à moi et ensemble nous prouverons ta valeur au peuple de Baldur.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tes talents pourraient être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([595.335])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Donnez moi une chance de prouvez ma valeur.~ */
  IF ~~ THEN 
    REPLY @5 /* ~J'accepte, tu peux rejoindre mon groupe.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes talents pourraient être utile.~ */ 
    DO ~MoveToPoint([595.335])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, tes talents pourraient être utile.~ */ 
    EXIT  
END

END





