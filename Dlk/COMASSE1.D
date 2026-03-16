BEGIN ~COMASSE1~ 


IF ~Global("MASSANE1_INIT","GLOBAL",0)~ THEN BEGIN 0 
  SAY @1 /* ~The doors being sealed, it has been a long time since I saw a living soul...~ */ 

  IF ~~ THEN 
    REPLY @2 /* ~Who are you?~ */ 
    DO ~SetGlobal("MASSANE1_INIT","GLOBAL",1)~ 
    GOTO 1 

END 

IF ~~ THEN BEGIN 1 
  SAY @6=@7 /* ~Excellent question. Hmm, how to answer that? ~ I was Massena, servant of Bhaal before his fall, and today I am a wandering soul who has not yet succumbed to madness. ~ */ 

    IF ~~ THEN 
    GOTO 9 

END 

IF ~~ THEN BEGIN 2 
  SAY @11 /* ~Like all the wandering souls who roam these places. You are free to await your death or to go forth to meet it. ~ */ 

  IF ~~ THEN 
    GOTO 9 
END 

IF ~~ THEN BEGIN 3 
  SAY @12 /* ~That you entered is an enigma to me. But the door is closed again, and death awaits you.~ */ 

  IF ~~ THEN 
    GOTO 9 
END 

IF ~~ THEN BEGIN 4 
  SAY @13=@14=@15 /* ~Ohh, there's always a way, but not always the one you hope for.~ ~Take my bones and find a way through the large portcullis. Then you'll come to a circular grate on the ground.~ ~If you survive that long, I may or may not help you. I haven't decided yet, actually. But it looks like I'm your only hope for survival. I wish you a pleasant stroll through the temple of my late master.~ */ 

  IF ~~ THEN 
    REPLY @16 /* ~I have better things to do than wander around with your remains!~ */ 
    GOTO 5 
    
  IF ~~ THEN 
    REPLY @18 /* ~Let's go!~ */ 
    DO ~Deactivate(MYSELF) 
        SetGlobal("MASSANE1_INIT","GLOBAL",2) 
        SetGlobal("temple_sortir","GLOBAL",1) 
        AddJournalEntry(@23,QUEST) 
        AddJournalEntry(@24,QUEST)~ 
    EXIT 
END 

IF ~~ THEN BEGIN 5 
  SAY @17 /* ~No worries, I have all the time in the world. Yours, however, is counted.~ */ 

  IF ~~ THEN 
    DO ~Deactivate(MYSELF) 
        SetGlobal("MASSANE1_INIT","GLOBAL",2) 
        SetGlobal("temple_sortir","GLOBAL",1) 
        AddJournalEntry(@23,QUEST) 
        AddJournalEntry(@24,QUEST)~ 
    EXIT 
END 

IF ~~ THEN BEGIN 6 
  SAY @18 /* ~Let's go!~ */ 

  IF ~~ THEN 
    EXIT 
END 

IF ~~ THEN BEGIN 7 
  SAY @19 /* ~You are a foreigner and therefore you don't need to know.~ */ 

  IF ~~ THEN  
    GOTO 9
END

IF ~~ THEN BEGIN 8 
  SAY @20=@21 /* ~A child of Bhaal! Nothing less! My master fornicating with mortals, now that's an idea. ~ ~Nice try, but we'll have to find something else.~ */ 
  
  IF ~~ THEN 
    GOTO 9 
END 

IF ~~ THEN BEGIN 9 
  SAY @22/* ~Don't worry, this temple will accompany you on your final journey.~ */ 
 
  IF ~Global("MASSANE1_rep1","GLOBAL",0)~ THEN 
    REPLY @9 /* ~I don't intend to die here, ghost!~ */ 
    DO ~SetGlobal("MASSANE1_rep1","GLOBAL",1) 
    IncrementGlobal("Massena_rep","GLOBAL",1)~ 
    GOTO 2 

  IF ~Global("MASSANE1_rep2","GLOBAL",0)~ THEN 
    REPLY @10 /* ~Sealed? I think I've entered.~ */ 
    DO ~SetGlobal("MASSANE1_rep2","GLOBAL",1) 
    IncrementGlobal("Massena_rep","GLOBAL",1)~ 
    GOTO 3 
    
  IF ~Global("MASSANE1_rep3","GLOBAL",0)~ THEN 
    REPLY @4 /* ~What is the purpose of this temple?~ */ 
    DO ~SetGlobal("MASSANE1_rep3","GLOBAL",1) 
    IncrementGlobal("Massena_rep","GLOBAL",1)~ 
    GOTO 7 

  IF ~Global("MASSANE1_rep4","GLOBAL",0) 
      IsGabber(PLAYER1)~ THEN   
    REPLY @5 /* ~I am <CHARNAME> and my father is Bhaal. Which makes you my servant!~ */ 
    DO ~SetGlobal("MASSANE1_rep4","GLOBAL",1) 
    IncrementGlobal("Massena_rep","GLOBAL",1)~ 
    GOTO 8 
    
    IF ~Global("MASSANE1_rep5","GLOBAL",0) 
       GlobalGT("Massena_rep","GLOBAL",1)~ THEN 
    REPLY @3 /* ~There is a way out of here!~ */ 
    DO ~SetGlobal("MASSANE1_rep5","GLOBAL",1)~ 
    GOTO 4 
END
