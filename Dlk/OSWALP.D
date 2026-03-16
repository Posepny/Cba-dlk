BEGIN ~OSWALP~ 

IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",0) 
              IsGabber(PLAYER1)~ THEN BEGIN 0 
 SAY @1 /* ~Protector, my name is Oswald and I belonged to the ducal guard. My arm is strong and my heart is brave. I wish to serve my city and I would be honored to put my blade at the service of a hero such as you.~ */ 

 IF ~~ THEN 
   REPLY @2 /* ~We will accomplish great things. Join me.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       JoinParty()~     
   EXIT 

 IF ~global("OSWALDpourquoi","GLOBAL",0)~ THEN 
   REPLY @10 /* ~Why are you no longer part of the Ducal Guard?~ */ 
   DO ~setglobal("OSWALDpourquoi","GLOBAL",1)~ 
   GOTO 1 

  IF ~~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("recrut_init","LOCALS",1) 
        SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([707.636])~ 
    EXIT 
END 



IF ~~ THEN BEGIN 1 
 SAY @11 /* ~To be frank (embarrassed), Macros sees potential enemies everywhere. He replaced a large part of the guard as soon as he arrived. Good soldiers have been thanked... Take me on your team and you won't regret it!~ */ 

 IF ~~ THEN 
   REPLY @12 /* ~We will achieve great things. Join me.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       JoinParty()~     
   JOURNAL @13 /* ~Macros, head of the dukes' security, replaced a large part of the ducal guard upon his arrival. According to Oswald, a former ducal guard, he sees enemies everywhere...~ */ 
   EXIT 

 IF ~~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       SetGlobal("IWasKickedOut","LOCALS",1) 
       MoveToPoint([707.636])~ 
   JOURNAL @13 /* ~Macros, head of the dukes' security, replaced a large part of the ducal guard upon his arrival. According to Oswald, a former ducal guard, he sees enemies everywhere...~ */ 
   EXIT 
   
END 

// Xth encounter: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",1) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 2 
  SAY @4 /* ~I'm ready if you need me.~ */ 
  IF ~~ THEN 
    REPLY @5 /* ~Yes, join me.~ */  
    DO ~SetGlobal("IWasKickedOut","LOCALS",0)
        JoinParty()~ 
    EXIT
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */   
    DO ~MoveToPoint([707.636])~ 
    EXIT 
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    EXIT   
END 

// Kicked from party 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",1)~ THEN BEGIN 3 
  SAY @6 /* ~I can't even stay in your party...~ */ 

  // Stay at the inn 
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        MoveToPoint([707.636])~ 
    EXIT 
  
  // Inn's cellar or basement 
  IF ~OR(2) 
       AreaCheck("COM026") 
       AreaCheck("COM027")~ THEN 
    REPLY @7 /* ~Go back to the inn, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        EscapeAreaMove("AR7216",707,636,10)~ 
    EXIT    
  
  // Other 
  IF ~!AreaCheck("AR7216") 
      !AreaCheck("COM026") 
      !AreaCheck("COM027")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",1)~     
    EXIT    

END 



BEGIN ~OSWALD~ 

// First encounter in the mod: recruitment possible 
IF WEIGHT #0 ~Global("Protecteur_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",0) 
              Global("recrut_init","LOCALS",0) 
              IsGabber(PLAYER1)~ THEN BEGIN 0 
 SAY @1 /* ~Protector, my name is Oswald and I belonged to the ducal guard. My arm is strong and my heart is brave. I wish to serve my city and I would be honored to put my blade at the service of a hero such as you.~ */ 

 IF ~~ THEN 
   REPLY @2 /* ~We will accomplish great things. Join me.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       JoinParty()~     
   EXIT 

 IF ~global("OSWALDpourquoi","GLOBAL",0)~ THEN 
   REPLY @10 /* ~Why are you no longer part of the ducal guard?~ */ 
   DO ~setglobal("OSWALDpourquoi","GLOBAL",1) 
   GOTO 1 

 IF THEN 
    REPLY @3 /* Stick around, you might be useful. */ 
    DO SetGlobal("recrut_init","LOCALS",1)  
        SetGlobal("IWasKickedOut","LOCALS",1)
        MoveToPoint([707.636]) 
    EXIT 
END


IF ~~ THEN BEGIN 1 
 SAY @11 /* ~To be frank (embarrassed), Macros sees potential enemies everywhere. He replaced a large part of the guard upon his arrival. Good soldiers were dismissed... Take me on your team and you won't regret it!~ */ 

 IF ~~ THEN 
   REPLY @12 /* ~We're going to achieve great things. Join me.~ */ 
   DO ~SetGlobal("recrut_init","LOCALS",1) 
       JoinParty()~     
   JOURNAL @13 /* ~Macros, head of the dukes' security, replaced a large part of the ducal guard upon his arrival. According to Oswald, a former ducal guard, he sees enemies everywhere...~ */ 
   EXIT 

 IF ~~ THEN 
   REPLY @3 /* ~Stay around, you might be useful.~ */ 
   JOURNAL @13 /* ~Macros, head of the dukes' security, replaced a large part of the ducal guard upon his arrival. According to Oswald, a former ducal guard, he sees enemies everywhere...~ */ 
   EXIT 
END 

// Xth encounter: recruitment possible 
IF WEIGHT #0 ~Global("Protector_baldur","GLOBAL",1) 
              Global("IWasKickedOut","LOCALS",1) 
              Global("recruit_init","LOCALS",1)~ THEN BEGIN 2 
  SAY @4 /* ~I'm ready if you need me.~ */ 
  IF ~~ THEN 
    REPLY @5 /* ~Yes, join me.~ */ 
    DO ~SetGlobal("IWasKickedOut","LOCALS",0) 
        JoinParty()~ 
    EXIT 
    
  IF ~AreaCheck("AR7216")~ THEN 
    REPLY @3 /* ~Stay around, you might be useful.~ */   
    DO ~MoveToPoint([707.636])~ 
    EXIT 
  
  IF ~!AreaCheck("AR7216")~ THEN 
    REPLY @7 /* ~Go back to the inn, you might be useful.~ */   
    DO ~SetGlobal("IWasKickedOut","LOCALS",1) 
        EscapeAreaMove("AR7216",707,636,10)~ 
    EXIT   
END 






/* 
// In party ******************************************************************************************************************************** 
BEGIN ~OSWALJ~ 

What can I do for you? 

Why did you leave your post guarding the Dukes? 

IF ~~ THEN BEGIN 1 
 SAY @5 /* ~To be frank (embarrassed), Macros sees potential enemies everywhere. He replaced a large part of the guard as soon as he arrived. Good soldiers have been thanked... Take me on your team and you won't regret it!~ */ 

 IF ~~ THEN 
   REPLY @2 /* ~I gladly accept you on my team.~ */ 
   DO ~SetGlobal("Recruit","LOCALS",2) 
       JoinParty()~    
   JOURNAL @6 /* ~Macros, head of the dukes' security, replaced a large part of the ducal guard upon his arrival. According to Oswald, a former ducal guard, he sees enemies everywhere...~ */ 
   EXIT 

 IF ~~ THEN 
   REPLY @4 /* ~There's no room for you in my group at the moment.~ */ 
   JOURNAL @6 /* ~Macros, head of the dukes' security, replaced a large part of the ducal guard upon his arrival. According to Oswald, a former ducal guard, he sees enemies everywhere...~ */ 
   EXIT 
END 

*/

