APPEND ~KAGAIP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 /* ~Alors comme ça les ducs, on fait de vous leur Protecteur. Position intéressante... A mon avis, il vous faut un nain solide dans le groupe!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Excellent, joigne toi à moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([685.215])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Alors on va casser des têtes ou tu comptes continuer de têter le sein de ta mère?~ */
  IF ~~ THEN 
    REPLY @5 /* ~J'ai besoin d'un gros bras, joins toi à moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
    DO ~MoveToPoint([685.215])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Quelle belle connerie! Sans moi ça va être beaucoup moins viril, tas de mauviettes.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([685.215])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retournes à l'auberge, tes gros muscles pourraient se réveler utile plus tard.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",685,215,10)~
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


APPEND ~KAGAIN~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 /* ~Alors comme ça les ducs, on fait de vous leur Protecteur. Position intéressante... A mon avis, il vous faut un nain solide dans le groupe!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Excellent, joigne toi à moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([685.215])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Alors on va casser des têtes ou tu comptes continuer de têter le sein de ta mère?~ */
  IF ~~ THEN 
    REPLY @5 /* ~J'ai besoin d'un gros bras, joins toi à moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
    DO ~MoveToPoint([685.215])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes gros muscles pourraient se réveler utile plus tard.~ */ 
    EXIT  
END


END
