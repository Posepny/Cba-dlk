APPEND ~XZARP~

// Montaron part. Xzar suit.
IF WEIGHT #0 ~Global("leave_XZAR","GLOBAL",1)~ THEN BEGIN 0

  SAY @8 /* ~Vous êtes dans la mouise jusqu'au cou. On vous laisse..~ */   
   
  IF ~Global("retour_auberge_MX","GLOBAL",1)~ THEN 
   DO ~SetGlobal("leave_XZAR","GLOBAL",0)
       EscapeAreaMove("AR7216",718,185,10)~
   EXIT
  
  IF ~Global("retour_auberge_MX","GLOBAL",0)~ THEN 
   DO ~SetGlobal("leave_XZAR","GLOBAL",0)
       MoveToObject("MONTARON")~
   EXIT
END

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",0)
              Global("recrut_init_mX","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Hey ce que l'oiseau fraichement sortit de son nid a fait de belles prouesses. A nous trois, je suis sur qu'on pourra tirer parti de votre titre de Protecteur!~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~SetGlobal("recrut_init_mX","GLOBAL",1)
        ActionOverride("MONTARON",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_monta_XZAR","GLOBAL",1)
       MoveToPoint([718.185])~
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
        SetGlobal("leave_montaron","GLOBAL",0)
        SetGlobal("leave_XZAR","GLOBAL",0)
        ActionOverride("MONTARON",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
    DO ~MoveToPoint([718.185])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Restez dans le coin, votre aide pourrait être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",0)
              Global("recrut_init_mX","GLOBAL",1)~ THEN BEGIN 3
  SAY @6 /* ~Je pense que c'est une erreur mais c'est à vous de décider. MONTARON et moi nous vous laissons.~ */

  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",1)
        SetGlobal("leave_montaron","GLOBAL",1)
        
        SetGlobal("retour_auberge_MX","GLOBAL",0)        
        ActionOverride("MONTARON",LeaveParty())        
        MoveToPoint([718.185])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",1)
        SetGlobal("leave_montaron","GLOBAL",1)
        
        SetGlobal("retour_auberge_MX","GLOBAL",1)
        ActionOverride("MONTARON",LeaveParty())          
        EscapeAreaMove("AR7216",718,185,10)~
    EXIT
    
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("KickedOut_mont_XZAR","GLOBAL",1)
        SetGlobal("leave_montaron","GLOBAL",1)
        
        SetGlobal("retour_auberge_MX","GLOBAL",0)
        ActionOverride("MONTARON",LeaveParty())~    
    EXIT 

END
  

END


APPEND ~XZAR~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("KickedOut_mont_XZAR","GLOBAL",0)
              Global("recrut_init_mX","GLOBAL",0)
              IsGabber(PLAYER1)~ THEN BEGIN 1
  SAY @1 /* ~Félicitations, votre titre est amplement mérité. Dommage que Gorion ne soit plus de ce monde pour vous féliciter à son tour. MONTARON et moi mmême serions ravis d'intégrer votre groupe.~ */
  IF ~~ THEN 
    REPLY @2 /* ~Le plaisir est partagé. Rejoignez moi.~ */ 
    DO ~SetGlobal("recrut_init_mX","GLOBAL",1)
        ActionOverride("MONTARON",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init_mX","GLOBAL",1)
       MoveToPoint([718.185])~
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
        SetGlobal("leave_montaron","GLOBAL",0)
        SetGlobal("leave_XZAR","GLOBAL",0)
        ActionOverride("MONTARON",JoinParty())
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Restez dans le coin, votre aide pourrait être utile.~ */ 
    DO ~MoveToPoint([718.185])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Restez dans le coin, votre aide pourrait être utile.~ */ 
    EXIT  
END

END

