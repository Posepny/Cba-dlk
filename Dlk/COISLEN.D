BEGIN ~COISLEN~ 

// 2nd encounter ********************************************************************************************************************************************************** 
IF ~Global("COM020_Duel_combat","COM020",1)~ THEN BEGIN 1 

  SAY @1=@2 /* ~Let's get down to business now.~ ~Let's see if you don't piss on each other between the two of you! (mad smile)~ */ 
  IF ~~ THEN REPLY @3 /* ~Perhaps we could stop for a moment and chat a little?~ */ 
       GOTO 2 

  IF ~~ THEN REPLY @4 /* ~(no reply)~ */ 
     DO ~SetGlobal("COM020_Duel_combat","COM020",3)~ 
		 EXIT 

END 


IF ~~ THEN BEGIN 2 

  SAY @5 /* ~We'll talk when you're dead and I've eaten your heart.~ */ 
  IF ~~ THEN 
      DO ~SetGlobal("COM020_Duel_combat","COM020",3)~ 
      EXIT 

END 


IF ~Global("COM020_Duel_combat","COM020",2)~ THEN BEGIN 3 

  SAY @6=@7 /* ~I see I'm expected. Interesting...~ ~ Glabuk, get your ass back here!~ */ 
  IF ~~ THEN REPLY @8 /* ~Maybe we could stop for a moment and chat a bit?~ */ 
     DO ~SetGlobal("Glabuk_apparition","GLOBAL",1)~ 
     GOTO 2 

  IF ~~ THEN REPLY @9 /* ~(don't reply)~ */ 
     DO ~SetGlobal("COM020_Duel_combat","GLOBAL",3) 
         SetGlobal("Glabuk_apparition","GLOBAL",1)~ 
		 EXIT 

END 


// group in Islendra's lair ********************************************************************************************************************************************* 
IF ~Global("COM020_PNJ_capture","GLOBAL",0) 
    Global("islendra_dial_antre","GLOBAL",0)~ THEN BEGIN 3 

  SAY @11 /* ~You're still here! It's always the same thing, they only understand death.~ */ 
  IF ~~ THEN REPLY @12 /* ~What do you mean?~ */ 
     GOTO 4 

  IF ~~ THEN REPLY @14 /* ~Who are you?~ */ 
     GOTO 5 
END 


IF ~~ THEN BEGIN 4 

  SAY @13 /* ~You thought you were the first to claim the title. Sorry to disappoint you, but take heart, you'll be joining them right away!~ */ 
  IF ~~ THEN 
     DO ~Enemy() 
         SetGlobal("islendra_dial_antre","GLOBAL",1)~ 
     // Journal of intrigue about Bhaal's champion, he's not the only one 
     EXIT 
END 


IF ~~ THEN BEGIN 5 

  SAY @15=@16 /* ~Who am I? Ah ah~ ~I am Islendra,The Great Huntress of Bhaal, and this is MY territory. You have been warned!~ */ 
  IF ~~ THEN 
     DO ~Enemy()
         SetGlobal("islendra_dial_antre","GLOBAL",1)~ 
     EXIT
END
