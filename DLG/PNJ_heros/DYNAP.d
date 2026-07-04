APPEND ~DYNAHP~

// Minsc part. Dyna suit.
IF WEIGHT #0 ~Global("Leave_dyna","GLOBAL",1)~ THEN BEGIN 0

  SAY @8 /* ~Ce fût une expérience enrichissante. A très bientôt j'espère.~ */   
   
  IF ~Global("retour_auberge_MD","GLOBAL",1)~ THEN 
   DO ~SetGlobal("Leave_dyna","GLOBAL",0)       
       EscapeAreaMove("AR7216",850,420,10)~
   EXIT
  
  IF ~Global("retour_auberge_MD","GLOBAL",0)~ THEN 
   DO ~SetGlobal("Leave_dyna","GLOBAL",0)
       MoveToObject("MINSC")~
   EXIT
END

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",0)
              Global("recrut_init_minsc_dyna","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Nous vous attendions Protecteur de Baldur.(sourires) Mon fidèle garde du corps, le dangeureux Bouh et moi même sommes fin prêt à protéger le peuple de Baldur!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~SetGlobal("recrut_init_minsc_dyna","GLOBAL",1)
        ActionOverride("MINSC",JoinParty())        
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
  SAY @4 /* ~Ravie de vous revoir. Désirez-vous que nous fassions partie de votre groupe?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoignez moi.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",0)
        SetGlobal("Leave_minsc","GLOBAL",0)
        SetGlobal("Leave_dyna","GLOBAL",0)
        ActionOverride("MINSC",JoinParty())
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
  SAY @6 /* ~A très bientôt, nous routes vont se croiser à nouveau. C'est certain.~ */


  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",1)
        SetGlobal("leave_minsc","GLOBAL",1)
        
        SetGlobal("retour_auberge_MD","GLOBAL",0)
        ActionOverride("MINSC",LeaveParty())        
        MoveToPoint([850.440])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",1)
        SetGlobal("leave_minsc","GLOBAL",1)        
        
        ActionOverride("MINSC",LeaveParty())   
        SetGlobal("retour_auberge_MD","GLOBAL",1)
        EscapeAreaMove("AR7216",850,420,6)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",1)    
        SetGlobal("leave_minsc","GLOBAL",1)
        
        SetGlobal("retour_auberge_MD","GLOBAL",0)
        ActionOverride("MINSC",LeaveParty())~    
    EXIT   
 
END
  

END


BEGIN ~DYNAHE~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_Minsc_Dyna","GLOBAL",0)
              Global("recrut_init_minsc_dyna","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Félicitations, votre titre est amplement mérité. Dommage que Gorion ne soit plus de ce monde pour vous féliciter à son tour. MINSC et moi mmême serions ravis d'intégrer votre groupe.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~SetGlobal("recrut_init_minsc_dyna","GLOBAL",1)
        ActionOverride("MINSC",JoinParty())
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
  SAY @4 /* ~Ravie de vous revoir. Désirez-vous que nous fassions partie de votre groupe?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoignez moi.~ */ 
    DO ~SetGlobal("KickedOut_Minsc_Dyna","GLOBAL",0)
        SetGlobal("leave_minsc","GLOBAL",0)
        SetGlobal("leave_dyna","GLOBAL",0)
        ActionOverride("MINSC",JoinParty())
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

