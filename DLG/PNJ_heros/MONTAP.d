APPEND ~MONTAP~

// XZAR part. Montaron suit.
IF WEIGHT #0 ~Global("Leave_montaron","GLOBAL",1)~ THEN BEGIN 0

  SAY @8 /* ~A mon avis, on va se revoir...~ */   
   
  IF ~Global("retour_auberge_MX","GLOBAL",1)~ THEN 
   DO ~SetGlobal("leave_montaron","GLOBAL",0)       
       EscapeAreaMove("AR7216",697,215,10)~
   EXIT
  
  IF ~Global("retour_auberge_MX","GLOBAL",0)~ THEN 
   DO ~SetGlobal("Leave_montaron","GLOBAL",0)
       MoveToObject("XZAR")~
   EXIT
END

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",0)
              Global("recrut_init_mX","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Vous vous en êtes bien sorti. Faire la peau à ce Koveras et devenir héros de cette Cité. Une belle opération que voilà! M'est avis que c'est maintenant que les choses vont se corser... Mais pas d'inquiétudes, Xzar et moi, on va veiller au grain. ~ */
  IF ~~ THEN 
    REPLY @2 /* ~Oui, vous êtes les bienvenus.~ */ 
    DO ~SetGlobal("recrut_init_mX","GLOBAL",1)
        ActionOverride("XZAR",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_mont_XZAR","GLOBAL",1)
       MoveToPoint([697.215])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",1)
              Global("recrut_init_mX","GLOBAL",1)~ THEN BEGIN 2
  SAY @4 /* ~J'me doutais que vous changeriez d'avis... Des gars comme nous, ça court pas les rues.~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",0)
        SetGlobal("leave_XZAR","GLOBAL",0)
        
        SetGlobal("leave_montaron","GLOBAL",0)
        ActionOverride("XZAR",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
    DO ~MoveToPoint([697.215])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Restez dans le coin, votre aide pourrait être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",0)
              Global("recrut_init_mX","GLOBAL",1)~ THEN BEGIN 3
  SAY @6 /* ~On nous remercie. Elle est bien bonne celle là...~ */

// Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",1)
        SetGlobal("leave_XZAR","GLOBAL",1)
        
        SetGlobal("retour_auberge_MX","GLOBAL",0)
        ActionOverride("XZAR",LeaveParty())        
        MoveToPoint([697.215])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",1)
        SetGlobal("leave_XZAR","GLOBAL",1)
        
        SetGlobal("retour_auberge_MX","GLOBAL",1)
        ActionOverride("XZAR",LeaveParty())          
        EscapeAreaMove("AR7216",697,215,10)~        
    EXIT
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",1)
        SetGlobal("leave_XZAR","GLOBAL",1)   
        
        SetGlobal("retour_auberge_MX","GLOBAL",0)
        ActionOverride("XZAR",LeaveParty())~    
    EXIT   

END
  

END


APPEND ~MONTAR~
// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",0)
              Global("recrut_init_mX","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Félicitations, votre titre est amplement mérité. Dommage que Gorion ne soit plus de ce monde pour vous féliciter à son tour. XZAR et moi mmême serions ravis d'intégrer votre groupe.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~SetGlobal("recrut_init_mont_XZAR","GLOBAL",1)
        ActionOverride("XZAR",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_mX","GLOBAL",1)
       MoveToPoint([697.215])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",1)
              Global("recrut_init_mX","GLOBAL",1)~ THEN BEGIN 2
  SAY @4 /* ~Auriez-vous besoin de notre aide?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",0)
        SetGlobal("leave_XZAR","GLOBAL",0)
        SetGlobal("leave_montaron","GLOBAL",0)
        ActionOverride("XZAR",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
    DO ~MoveToPoint([697.215])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Restez dans le coin, votre aide pourrait être utile.~ */ 
    EXIT  
END

END
