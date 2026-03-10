BEGIN ~ALINEP~ 

// First encounter in the mod: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",0) 
              IsGabber(PLAYER1)~ THEN BEGIN 0 
  SAY @1=@10 /* ~Alinéa, bard by profession. (bows). I like to think that a hero such as yourself desires that his exploits become legends. That is why I offer you my humble services! (smiles)~ */ 
 
  IF ~~ THEN 
    REPLY @2 /* ~You are absolutely right. The songs must be about the Protector of Baldur's Gate! I accept you into my party!~*/ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        JoinParty()~ 
    EXIT 
    
  IF ~~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       SetGlobal("IWasKickedOut","LOCALS",1) 
       MoveToPoint([657.712])~ 
   EXIT 
END 


// Xth encounter: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",1) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1 
  SAY @4 /* ~If you need me, I'm ready to join you.~ */ 
  
  IF ~~ THEN 
    REPLY @5 /* ~Yes, join me.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0) 
        JoinParty()~ 
    EXIT 
    
  IF ~AreaCheck("AR7216")~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~MoveToPoint([657.712])~ 
    EXIT 
  
  IF ~!AreaCheck("AR7216")~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
    EXIT   
END 


// Excluded from the party 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2 
  SAY @6 /* ~I think I'll have time to write a ballad!~ */ 


  // Stay at the inn 
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([657.712])~ 
    EXIT 
  
  // Inn's cellar or basement 
  IF ~OR(2) 
       AreaCheck("COM026") 
       AreaCheck("COM027")~ THEN 
   REPLY @7 /* ~Go back to the inn, we can probably help each other.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",657,712,10)~ 
    EXIT    
  
  // Other 
  IF ~!AreaCheck("AR7216") 
      !AreaCheck("COM026") 
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /* ~Stay around, we can probably help each other.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~     
    EXIT 
    
END 


BEGIN ~ALINEA~ 

// First encounter in the mod: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",0) 
              IsGabber(PLAYER1)~ THEN BEGIN 0 
 SAY @1=@10 /* ~Alinéa, bard by profession. (bows). I like to think that a hero like you desires his exploits to become legends. That's why I offer you my humble services! (smile)~ */ 
 
  IF ~~ THEN 
    REPLY @2 /* ~You're absolutely right. The songs should be about the Protector of Baldur's Gate! I accept you into my party!~*/ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        JoinParty()~ 
    EXIT 
    
  IF ~~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       SetGlobal("IWasKickedOut","LOCALS",1) 
       MoveToPoint([657.712])~ 
   EXIT 
END 


// Xth encounter: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",1) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 1 
  SAY @4 /* ~If you need me, I'm ready to join you.~ */ 
  IF ~~ THEN 
    REPLY @5 /* ~Yes, join me.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0) 
        JoinParty()~ 
    EXIT 
    
  IF ~AreaCheck("AR7216")~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~MoveToPoint([657.712])~ 
    EXIT 
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Go back to the inn, your noble heart might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        EscapeAreaMove("AR7216",657,712,10)~ 
    EXIT   
END
