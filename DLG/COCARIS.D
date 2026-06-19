BEGIN ~COCARIS~ 

// The character is on this card 
IF ~IsGabber(PLAYER1) 
    OpenState("PS2",FALSE)        
    Global("Caris_init","COM021",0)~ THEN BEGIN 1 

  SAY @1 /* ~Welcome among the dead, blood of Bhaal.~ */ 
  IF ~~ THEN 
          REPLY @2 /* ~Who are you?~ */ 
          DO ~SetGlobal("Caris_init","COM021",1)~ 
          GOTO 3 
END 

// The character is not on this card 
IF ~!IsGabber(PLAYER1) 
    OpenState("PS2",FALSE) 
    Global("Caris_init","COM021",0)~ THEN BEGIN 2 

  SAY @5 /* ~Welcome among the dead, servant of the blood of Bhaal.~ */ 
  IF ~~ THEN 
          REPLY @6 /* ~Who are you?~ */ 
          DO ~SetGlobal("Caris_init","COM021",1)~ 
          GOTO 3 
END 

IF ~~ THEN BEGIN 3 

  SAY @3=@4/* ~Caris, I was the master's personal embalmer.~ ~In this place, I make sure to find a place for each of our guests. However, there are four chests in this level reserved for the dead. Find the four keys and the chests will open to reveal a special item. When placed correctly, these items will grant access to another death. In my opinion, much less pleasant than this one. I assure you, none of our clients have complained so far! (big smile)~ */ 
  IF ~~ THEN 
           DO ~AddJournalEntry(@27,INFO) 
               DestroySelf()~ 
           EXIT 
END 

IF ~~ THEN BEGIN 5 

  SAY @11 /* ~Don't worry, you'll find yours. We still have plenty of coffins to offer you.~ */ 
  
   IF ~~ THEN 
           REPLY @12 /* ~You have a strange sense of humor...~ */ 
           GOTO 6 

  IF ~~ THEN 
          REPLY @26 /* ~(Do not reply)~ */ 
          DO ~DestroySelf()~ 
          EXIT 
END 

IF ~~ THEN BEGIN 6 

  SAY @15 /* ~I am quite serious. A murder is handled with the utmost care.~ */ 
  IF ~~ THEN 
         DO ~DestroySelf()~ 
         EXIT 
END 


// at least one of the chests is open and the exit is closed ********************************************************************************************************************************************************************************** 
IF ~OpenState("PS2",FALSE) 
    Global("Exit_Object","COM021",0) 
    GlobalGT("number_of_open_chests","COM021",0)~ THEN BEGIN 9

  SAY @18=@16 /* ~Well, I note with great pleasure that we are dealing with quality guests. Your murder has not yet found you.~ ~Be a little patient, we will find you a fine murder, with blood and pain.~ */ 
  IF ~~ THEN 
          EXIT 
END 


// The exit is open *********************************************************************************************************************************************************************************************************************** 
IF ~OpenState("PS2",TRUE) 
    Global("Open_Exit","COM021",0)~ THEN BEGIN 13 

  SAY @24 /* ~It is with sadness that I will see you continue on your way. Arm yourself with wisdom; you will need it for your next trial. (the effigy closes its eyes with a smile on its lips)~ */ 
  IF ~~ THEN 
           DO ~SetGlobal("Open_Exit","COM021",1)~ 
           GOTO 14 
END 

IF ~~ THEN BEGIN 14 

  SAY @25 /* ~It was a pleasure to see you play with murder. (The effigy closes its eyes, a smile on its lips)~ */ 
  IF ~~ THEN 
          DO ~DestroySelf()~ 
          EXIT   
END 


// They went to room 1: fireball ************************************************************************************************************************************************************************************************* 
IF ~Global("fire_room","COM021",1) 
    Global("Open_exit","COM021",0)~ THEN BEGIN 15 

  SAY @9 /* ~I see the fire coffins didn't appeal to you. Some of you prefer to stay on the ground. Personally, I think it's important to be comfortable in one's eternal demise.~ */ 
  IF ~Global("Caris_cerqueil","COM021",0)~ THEN 
          DO ~SetGlobal("salle_feu","COM021",2)~ 
          GOTO 5 
          
  IF ~Global("Caris_cerqueil","COM021",1)~ THEN 
          DO ~SetGlobal("salle_feu","COM021",2) 
              DestroySelf()~ 
          EXIT 
END 


// They went to the Urglite room *********************************************************************************************************************************************************************************************************** 
IF ~Global("salle_glace","COM021",1) 
    Global("Open_Exit","COM021",0)~ THEN BEGIN 16 

  SAY @10 /* ~I see that Urglite's coffins are not to your liking.A little too icy perhaps?~ */ 
  IF ~Global("Caris_cerqueil","COM021",0)~ THEN 
          DO ~SetGlobal("salle_glace","COM021",2)~ 
          GOTO 5
          
  IF ~Global("Caris_cerqueil","COM021",1)~ THEN 
          DO ~SetGlobal("salle_glace","COM021",2)
              DestroySelf()~
          EXIT
END
