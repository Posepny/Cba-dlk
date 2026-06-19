APPEND ~MINSCP~

// DYNAHEIR part. Minsc suit.
IF WEIGHT #0 ~Global("leave_minsc","GLOBAL",1)~ THEN BEGIN 0

  SAY @8 /* ~Bouh n'aime pas ça du tout! Nous nous en allons.~ */   
   
  IF ~Global("retour_auberge_MD","GLOBAL",1)~ THEN 
   DO ~SetGlobal("leave_minsc","GLOBAL",0)
       EscapeAreaMove("AR7216",820,440,6)~
   EXIT
  
  IF ~Global("retour_auberge_MD","GLOBAL",0)~ THEN 
   DO ~SetGlobal("Leave_minsc","GLOBAL",0)
       MoveToObject("DYNAHEIR")~
   EXIT
  
END

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",0)
              Global("recrut_init_minsc_dyna","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Protecteur, la grande magicienne Dynahéir et son fidèle Minsc sont prêts à vous servir! Bien sur, Bouh sera de la partie!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~ActionOverride("DYNAHEIR",JoinParty())
        SetGlobal("recrut_init_minsc_dyna","GLOBAL",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_minsc_dyna","GLOBAL",1)
       MoveToPoint([850.440])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",1)
              Global("recrut_init_minsc_dyna","GLOBAL",1)~ THEN BEGIN 2
  SAY @4 /* ~Nous sommes prêt! Bouh n'attend plus qu'un signe de toi.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~ActionOverride("DYNAHEIR",JoinParty())
        SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",0)
        SetGlobal("leave_minsc","GLOBAL",0)
        SetGlobal("leave_dyna","GLOBAL",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
    DO ~MoveToPoint([850.440])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Restez dans le coin, votre aide pourrait être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",0)
              Global("recrut_init_minsc_dyna","GLOBAL",1)~ THEN BEGIN 3
  SAY @6 /* ~Bouh est triste mais il sait que rapidement nous partirons pour de nouvelles aventures.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",1)
        SetGlobal("leave_dyna","GLOBAL",1)
        
        SetGlobal("retour_auberge_MD","GLOBAL",0)
        ActionOverride("DYNAHEIR",LeaveParty())        
        MoveToPoint([850.440])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",1)
        SetGlobal("leave_dyna","GLOBAL",1)
        
        ActionOverride("DYNAHEIR",LeaveParty())
        SetGlobal("retour_auberge_MD","GLOBAL",1)
        EscapeAreaMove("AR7216",820,440,6)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",1)
        SetGlobal("leave_dyna","GLOBAL",1)
        
        SetGlobal("retour_auberge_MD","GLOBAL",0)  
        ActionOverride("DYNAHEIR",LeaveParty())~    
    EXIT   

END
  

END


APPEND ~MINSC~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",0)
              Global("recrut_init_minsc_dyna","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Félicitations, votre titre est amplement mérité. Dommage que Gorion ne soit plus de ce monde pour vous féliciter à son tour. DYNAHEIR et moi mmême serions ravis d'intégrer votre groupe.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~ActionOverride("DYNAHEIR",JoinParty())
        SetGlobal("recrut_init_minsc_dyna","GLOBAL",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_minsc_dyna","GLOBAL",1)
       MoveToPoint([850.440])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",1)
              Global("recrut_init_minsc_dyna","GLOBAL",1)~ THEN BEGIN 2
  SAY @4 /* ~Nous sommes prêt! Bouh n'attend plus qu'un signe de toi.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~ActionOverride("DYNAHEIR",JoinParty())
        SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",0)
        SetGlobal("leave_minsc","GLOBAL",0)
        SetGlobal("leave_dyna","GLOBAL",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
    DO ~MoveToPoint([850.440])~
    EXIT   
END

END