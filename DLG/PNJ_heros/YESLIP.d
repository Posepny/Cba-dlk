APPEND ~YESLIP~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1 = @10/*  ~Voilà à quoi ressemble une tête de héros (il vous dévisage) et de Protecteur par dessus le marché! Le trône de fer doit pas beaucoup vous aimer à l'heure qu'il est. Par Clangeddin, ils n'ont pas intérêt à revenir! (sourire)~ ~Mon clan et ma mine n'existe plus mais la vie continue! Si vous avez besoin d'un bon gars pour casser quelques têtes, je suis disponible. En fait, j'ai rien de mieux à faire. (sourire)~*/
   IF ~~ THEN 
    REPLY @2 /* ~Nous allons réaliser de grandes choses. Rejoint moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tes talents pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([152.896])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Nous sommes prêt mon marteau et moi!~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes talents pourrait être utile.~ */ 
    DO ~MoveToPoint([152.896])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, tes talents pourrait être utile.~ */ 
    EXIT  
END


// Exclu du groupe
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2
  SAY @6 /* ~Dommage que l'aventure s'arrête, je m'amusais bien.~ */

  // Rester à l'auberge
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, tu pourrais être utile.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([152.896])~
    EXIT
  
  // Cave ou sous-sol de l'auberge
  IF ~OR(2)
       AreaCheck("COM026")
       AreaCheck("COM027")~ THEN
   REPLY @7 /* ~Retourne à l'auberge, nous pourrons sans doute nous entre aider.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",152,896,10)~
    EXIT   
  
  // Autre
  IF ~!AreaCheck("AR7216")
      !AreaCheck("COM026")
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /*  ~Reste dans le coin, nous pourrons sans doute nous entre aider.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~    
    EXIT 

END
  

END


APPEND ~YESLIC~

// 1iere rencontre dans le mod: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",0)
              Global("recrut_init","LOCALS",0)
              IsGabber(PLAYER1)~ THEN BEGIN 0
 SAY @1 = @10/*  ~Voilà à quoi ressemble une tête de héros (il vous dévisage) et de Protecteur par dessus le marché! Le trône de fer doit pas beaucoup vous aimer à l'heure qu'il est. Par Clangeddin, ils n'ont pas intérêt à revenir! (sourire)~ ~Mon clan et ma mine n'existe plus mais la vie continue! Si vous avez besoin d'un bon gars pour casser quelques têtes, je suis disponible. En fait, j'ai rien de mieux à faire. (sourire)~*/
   IF ~~ THEN 
    REPLY @2 /* ~Nous allons réaliser de grandes choses. Rejoint moi.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1)
        JoinParty()~
    EXIT
    
  IF ~~ THEN 
   REPLY @3 /* ~Reste dans le coin, tes talents pourrait être utile.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1)
       SetGlobal("IWasKickedOut","LOCALS",1)
       MoveToPoint([152.896])~
   EXIT
END


// Xième rencontre: recrutement possible
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1)
              Global("IWasKickedOut","LOCALS",1)
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1
  SAY @4 /* ~Nous sommes prêt mon marteau et moi!~ */
  IF ~~ THEN 
    REPLY @5 /* ~Oui, rejoint moi.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Reste dans le coin, tes talents pourrait être utile.~ */ 
    DO ~MoveToPoint([152.896])~
    EXIT
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /*~Reste dans le coin, tes talents pourrait être utile.~ */ 
    EXIT  
END

END
