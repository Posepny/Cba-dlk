APPEND ~SHARTP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Gender(PLAYER1,MALE)
              Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1=@10 /* ~Je défie en duel le Protecteur de Baldur!~  ~Ah ah vous y avez cru hein! Une bonne raclée en public. Rien de tel pour se forger une réputation de lopette! (sourire)~*/ 
  IF ~~ THEN 
    REPLY @2 /* ~Du caractère à revendre à ce que je vois, rejoint moi!~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, ta vaillance pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([340.807])~
   EXIT
END

IF ~Gender(PLAYER1,FEMALE)
    Global("Protecteur_baldur","GLOBAL",1)
    Global("IWasKickedOut","LOCALS",0)
    Global("recrut_init","LOCALS",0)~ THEN BEGIN 1
  SAY @11 = @12 /* ~Tu vas sans doute engager des hommes dans ton groupe. Grossière erreur.~ ~Il te faut une femme pour leur botter le train. Avec moi, ça va filer droit!~*/
  IF ~~ THEN 
    REPLY @2 /* ~Du caractère à revendre à ce que je vois, rejoint moi!~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, ta vaillance pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([340.807])~
   EXIT
END



// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @4 /* ~Alors on s'est décidée à demander à Shartell si elle est prête à botter des culs?~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, ta vaillance pourrait être utile.~ */ 
    DO ~MoveToPoint([369.1047])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, ta vaillance pourrait être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 3
  SAY @6 /* ~Ces adieux me navre. J'espère que nous ferons rapidement à nouveau équipe.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([369.1047])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
    REPLY @7 /* ~Retourne à l'auberge, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",369,1047,10)~
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


APPEND ~SHARTE~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Gender(PLAYER1,MALE)
              Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
  SAY @1 = @10 /* ~Je défie en duel le Protecteur de Baldur!~  ~Ah ah vous y avez cru hein! Une bonne raclée en public. Rien de tel pour se forger une réputation de lopette! (sourire)~ */
  IF ~~ THEN 
    REPLY @2 /* ~Du caractère à revendre à ce que je vois, rejoint moi!~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, ta vaillance pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([369.1047])~
   EXIT
END

IF ~Gender(PLAYER1,FEMALE)
    Global("Protecteur_baldur","GLOBAL",1)
    Global("IWasKickedOut","LOCALS",0)
    Global("recrut_init","LOCALS",0)~ THEN BEGIN 1
  SAY @11 = @12 /* ~Tu vas sans doute engager des hommes dans ton groupe. Grossière erreur.~ ~Il te faut une femme pour leur botter le train. Avec moi, ça va filer droit!~*/
  IF ~~ THEN 
    REPLY @2 /* ~Du caractère à revendre à ce que je vois, rejoint moi!~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, ta vaillance pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([369.1047])~
   EXIT
END

END


