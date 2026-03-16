BEGIN ~GEOFFRP~ 


// First encounter in the mod: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",0) 
              IsGabber(PLAYER1)~ THEN BEGIN 0 
  SAY @1=@10 /* ~The Protector of Baldur's Gate in the flesh! All the people speak of your exploits, and the town criers announce that you will be recruiting companions for adventure.~ ~I present myself to you, I am Geoffroy, son of the lord of the Anxval domain. My blade is at your service to serve Baldur's Gate with strength and honor.~ */ 
  IF ~~ THEN 
    REPLY @2 /* ~Well, you've convinced me. I accept you into my party.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        JoinParty()~ 
    EXIT 
  
  IF ~~ THEN 
    REPLY @11 /* ~A nobleman who wants to be under my command. That's surprising, to say the least. Isn't it?~ */ 
    GOTO 1 

    
  IF ~~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([679.676])~ 
    EXIT 
END 


IF ~~ THEN BEGIN 1 
  SAY @12 /* ~A second son must make his own way in the world. Serving the Protector of Baldur would be a great honor for me and my family~ */ 

  IF ~~ THEN 
    REPLY @2 /* ~Well, you've convinced me. I accept you into my party.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        JoinParty()~ 
     EXIT 

  IF ~~ THEN 
     REPLY @3 /* ~Stay around, you might be useful.~ */ 
     DO ~SetGlobal("recrut_init","LOCALS",1) 
        SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([679.676])~ 
     EXIT 
END 


// Same encounter: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",1) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2 
  SAY @4 /* ~I am ready to serve Baldur.~ */ 
  IF ~~ THEN 
    REPLY @5 /* ~Yes, join me.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0) 
        JoinParty()~ 
    EXIT 
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around,You could be useful.~ */ 
    DO ~MoveToPoint([679.676])~ 
    EXIT 
  
  IF ~!AreaCheck("AR7216")~ THEN 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)
        EscapeAreaMove("AR7216",679,676,10)~ 
    EXIT   
END 


  // Excluded from the group 
  IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2 
  SAY @6 /* ~What a shame to end our association so soon.~ */ 

  // Stay at the inn 
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([679.676])~ 
    EXIT 
  
  // Inn cellar or basement 
  IF ~OR(2) 
       AreaCheck("COM026") 
       AreaCheck("COM027")~ THEN 
    REPLY @7 /* ~Go back to the inn, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        EscapeAreaMove("AR7216",679,676,10)~ 
    EXIT    
  
  // Other 
  IF ~!AreaCheck("AR7216") 
      !AreaCheck("COM026") 
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~     
    EXIT 

END 
  

BEGIN ~GEOFFRO~ 

// 1st encounter in the mod: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",0) 
              IsGabber(PLAYER1)~ THEN BEGIN 0 
  SAY @1=@10 /* ~The Protector of Baldur's Gate in the flesh! All the people are talking about your exploits, and the town criers are announcing that you are going to recruit companions for adventure.~ ~I present myself to you, I am Geoffrey, son of the lord of the Anxval estate. My blade is at your service to serve Baldur's Gate with strength and honor.~ */ 
  IF ~~ THEN 
    REPLY @2 /* ~Well, you have convinced me. I accept you into my party.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        JoinParty()~ 
    EXIT 
  
  IF ~~ THEN 
    REPLY @11 /* ~A nobleman who wants to be under my command. That is surprising, to say the least. No?~ */ 
    GOTO 1 

    
  IF ~~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([679.676])~ 
    EXIT 
END 


  SAY @12 /* ~A second son must make his own way. Serving the Protector of Baldur would be a great honor for me and my family~ */

  IF ~~ THEN 
    REPLY @2 /* ~Well, you've convinced me. I accept you into my party.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        JoinParty()~ 
     EXIT 

  IF ~~ THEN 
     REPLY @3 /* ~Stay around, you might be useful.~ */ 
     DO ~SetGlobal("recrut_init","LOCALS",1) 
        SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([679.676])~ 
     EXIT 
END 


// Same encounter: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",1) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2 
  SAY @4 /* ~I am ready to serve Baldur.~ */ 
  IF ~~ THEN 
    REPLY @5 /* ~Yes, join me.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0) 
        JoinParty()~ 
    EXIT 
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~MoveToPoint([679.676])~ 
    EXIT 
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Go back to the inn, your noble heart might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        EscapeAreaMove("AR7216",679,676,10)~ 
    EXIT   
END 



/* 
That's a strange idea you have there. But I'll manage on my own to find a way out. 
*/
