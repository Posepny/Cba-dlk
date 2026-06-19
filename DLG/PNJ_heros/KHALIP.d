APPEND ~KHALIP~

// Jaheira part. Khalid suit.
IF WEIGHT #0 ~Global("Leave_Khalid","GLOBAL",1)~ THEN BEGIN 0

  SAY @8 /* ~Je vous souhaite bonne chance.~ */   
   
  IF ~Global("retour_auberge_KJ","GLOBAL",1)~ THEN 
   DO ~SetGlobal("Leave_Khalid","GLOBAL",0)
       EscapeAreaMove("AR7216",860,440,2)~
   EXIT
  
  IF ~Global("retour_auberge_KJ","GLOBAL",0)~ THEN 
   DO ~SetGlobal("Leave_Khalid","GLOBAL",0)
       MoveToObject("Jaheira")~
   EXIT
END

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_khal_Jah","GLOBAL",0)
              Global("recrut_init_khal_Jah","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
              
  SAY @1 /*  ~Bonjour <CHARNAME> ou plutot Protecteur de Baldur. (sourire). Jaheira et moi mmême serions ravis d'intégrer votre groupe.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~ActionOverride("Jaheira",JoinParty())
        SetGlobal("recrut_init_khal_Jah","GLOBAL",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_khal_Jah","GLOBAL",1)
       MoveToPoint([850.440])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_khal_Jah","GLOBAL",1)
              Global("recrut_init_khal_Jah","GLOBAL",1)~ THEN BEGIN 2
  SAY @4 /* ~Auriez-vous besoin de notre aide?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~ActionOverride("Jaheira",JoinParty())
        SetGlobal("KickedOut_khal_Jah","GLOBAL",0)
        SetGlobal("Leave_Khalid","GLOBAL",0)
        SetGlobal("Leave_Jaheira","GLOBAL",0)
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
              Global("KickedOut_khal_Jah","GLOBAL",0)
              Global("recrut_init_khal_Jah","GLOBAL",1)~ THEN BEGIN 3
  SAY @6 /* ~C'est vous le chef et c'est à vous de décider. Khalid et moi nous vous laissons.~ */

// Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_khal_Jah","GLOBAL",1)
        SetGlobal("Leave_Jaheira","GLOBAL",1)
        
        SetGlobal("retour_auberge_KJ","GLOBAL",0)
        ActionOverride("Jaheira",LeaveParty())        
        MoveToPoint([850.440])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_khal_Jah","GLOBAL",1)
        SetGlobal("Leave_Jaheira","GLOBAL",1)
        
        ActionOverride("Jaheira",LeaveParty())
        SetGlobal("retour_auberge_KJ","GLOBAL",1)
        EscapeAreaMove("AR7216",860,440,13)~
    EXIT
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_khal_Jah","GLOBAL",1)
        SetGlobal("Leave_Jaheira","GLOBAL",1)      
        
        SetGlobal("retour_auberge_KJ","GLOBAL",0)  
        ActionOverride("Jaheira",LeaveParty())~    
    EXIT   
 
END
  

END


APPEND ~KHALID~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_khal_Jah","GLOBAL",0)
              Global("recrut_init_khal_Jah","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Félicitations, votre titre est amplement mérité. Dommage que Gorion ne soit plus de ce monde pour vous féliciter à son tour. Khalid et moi mmême serions ravis d'intégrer votre groupe.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~ActionOverride("Jaheira",JoinParty())
        SetGlobal("recrut_init_khal_Jah","GLOBAL",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_khal_Jah","GLOBAL",1)
       MoveToPoint([850.440])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_khal_Jah","GLOBAL",1)
              Global("recrut_init_khal_Jah","GLOBAL",1)~ THEN BEGIN 2
  SAY @4 /* ~Auriez-vous besoin de notre aide?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~ActionOverride("KHALID",JoinParty())
        SetGlobal("KickedOut_khal_Jah","GLOBAL",0)
        SetGlobal("Leave_Jaheira","GLOBAL",0)
        SetGlobal("Leave_Khalid","GLOBAL",0)
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

END


