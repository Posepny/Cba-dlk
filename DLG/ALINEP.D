BEGIN ~ALINEP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1=@10 /* ~Alinéa, barde de profession. (fait la révérence). J'aime à croire qu'un héros tel que vous désire que ses exploits deviennent des légendes. C'est pourquoi je Je vous propose mes humbles services! (sourire)~  */
 
  IF ~~ THEN 
    REPLY @2  /* ~Tu as tout à faire raison. Les chansons doivent parler du Protecteur de la porte de Baldur! Je t'accepte dans mon groupe!~*/
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([657.712])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Si tu as besoin de moi, je suis prêt à te rejoindre.~  */
  
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~MoveToPoint([657.712])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Je crois que je vais avoir du temps pour écrire une balade!~ */


  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([657.712])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
   REPLY @7 /* ~Retourne à l'auberge, nous pourrons sans doute nous entre aider.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",657,712,10)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~    
    EXIT 
    
END


BEGIN ~ALINEA~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1=@10 /* ~Alinéa, barde de profession. (fait la révérence). J'aime à croire qu'un héros tel que vous désire que ses exploits deviennent des légendes. C'est pourquoi je Je vous propose mes humbles services! (sourire)~  */
 
  IF ~~ THEN 
    REPLY @2  /* ~Tu as tout à faire raison. Les chansons doivent parler du Protecteur de la porte de Baldur! Je t'accepte dans mon groupe!~*/
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([657.712])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Si tu as besoin de moi, je suis prêt à te rejoindre.~  */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
   REPLY @3 /* ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~MoveToPoint([657.712])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Retourne à l'auberge, ton coeur noble pourrait être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",657,712,10)~
    EXIT  
END