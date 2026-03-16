BEGIN ~COMEUR2~ 

IF ~Global("murder_appa","COM025",1)~ THEN BEGIN 1 

  SAY @1=@2 /* ~So you've made it this far.~ ~ Know that I wouldn't have bet a penny on you when you arrived.~ */ 
  IF ~~ THEN 
    DO ~SetGlobal("murder_appa","COM025",2)~ 
    GOTO 2 

END 


IF ~~ THEN BEGIN 2 

  SAY @3 /* ~Against all odds, you have triumphed over my trials...~ */ 
  IF ~Global("MURDER2_reward","COM025",0)~ THEN 
            REPLY @4 /* ~Do I deserve a reward?~ */ 
            DO ~SetGlobal("MURDER2_reward","COM025",1) 
                IncrementGlobal("MURDER2_exit","COM025",1)~ 
            GOTO 3 
           

  IF ~Global("MURDER2_who","COM025",0)~ THEN   
           REPLY @5 /* ~Who are you?~ */ 
           DO ~SetGlobal("MURDER2_who","COM025",1) 
               IncrementGlobal("MURDER2_exit","COM025",1)~ 
           GOTO 4 

  IF ~Global("MURDER2_survival","COM025",0)~ THEN   
           REPLY @6 /* ~I don't die easily.~ */ 
           DO ~SetGlobal("MURDER2_survival","COM025",1) 
               IncrementGlobal("MURDER2_exit","COM025",1)~ 
           GOTO 5 

  IF ~GlobalGT("MURDER2_exit","COM025",1)~ THEN 
           REPLY @7 /* ~I want to get out of here.~ */ 
           GOTO 6 

END 


IF ~~ THEN BEGIN 3 

  SAY @8=@9 /* ~Oh, from me, there's no doubt about it.~ ~I've decided to spare your life.~ */ 
  IF ~~ THEN GOTO 2 

END 

IF ~~ THEN BEGIN 4 

  SAY @10=@11 /* ~Have you already forgotten our previous encounter in the checkered room?~ ~I am murder.~ */ 
  IF ~~ THEN GOTO 2 

END 


IF ~~ THEN BEGIN 5 

  SAY @12 /* ~Indeed, I see you have a fine survival instinct.~ */ 
  IF ~~ THEN GOTO 2 

END 


IF ~~ THEN BEGIN 6 

  SAY @13=@14=@15 /* ~Yes, it's time for you to leave this place.~ ~ Nevertheless, I have one last Task to be accomplished, Blood of Bhaal.~ ~ Prepare to receive the master's reward.~ */ 
  IF ~~ THEN 
        DO ~SetGlobal("MURDER2_recomp_Bhaal","COM025",1)~ 
        EXIT 

END 


IF ~Global("MURDER2_recomp_Bhaal","COM025",2)~ THEN BEGIN 7 

  SAY @16 /* ~I am finished with you. Farewell, Blood of Bhaal!~ */ 
  IF ~~ THEN 
         DO ~SetGlobal("MURDER2_recomp_Bhaal","COM025",3)~ 
         EXIT 

END
