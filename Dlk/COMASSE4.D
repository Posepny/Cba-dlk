BEGIN ~COMASSE4~ 

IF ~Global("Bhaal_epreuves","GLOBAL",4)~ THEN BEGIN 0 
  SAY @1 /* ~He's back! Praise the Lord of Murder, my brothers! ~ */ 

  IF ~~ THEN 
    REPLY @2 /* ~But who are all these people?~ */ 
    GOTO 1 

  IF ~~ THEN 
    REPLY @3 /* ~You again! And now he's not alone...~ */ 
    GOTO 3 

  IF ~~ THEN 
    REPLY @4 /* ~You're the clingy type. I'll get rid of all of you before I leave. It's safer that way!~ */ 
    GOTO 4 
END 

IF ~~ THEN BEGIN 1 
  SAY @5=@6=@7 /* ~I woke my brothers while you were gone. ~ ~(Massena turns to the others) Look, Deathmask, the champion of Bhaal has been revealed. Our high priestess Systera was right! ~ ~(He looks at you again, raising his arms) A great destiny awaits you!~ */ 

  IF ~~ THEN 
    REPLY @8 /* ~I certainly intend to. By the way, the trials were a real mess. I hope it's over...~ */ 
    GOTO 2 

  IF ~~ THEN 
    REPLY @9 /* ~I will prove myself worthy of this honor. What should I do?~ */ 
    GOTO 7 

  IF ~~ THEN 
    REPLY @10 /* ~Find yourself another champion. I'm fed up with this temple. I'm leaving!~ */ 
    GOTO 5 
END 

IF ~~ THEN BEGIN 2 
  SAY @11 /* ~The Grand Master had to make sure you were the chosen one.~ */ 

  IF ~~ THEN 
    GOTO 7 
END 

IF ~~ THEN BEGIN 3 
  SAY @12 /* ~The Grand Master has made you his champion. A great destiny awaits you!~ */ 

  IF ~~ THEN 
    REPLY @13 /* ~I will be nobody's puppet. Your group of fanatics can find another champion. I'm leaving!~ */ 
    GOTO 5 

  IF ~~ THEN 
    REPLY @14 /* ~Hmm, I hope it's worth it. What do you expect from me?~ */ 
    GOTO 5	 
  
END 

IF ~~ THEN BEGIN 4 
  SAY @15 /* ~You dare refuse the honor bestowed upon you! ~ */ 

  IF ~~ THEN 
    GOTO 6 
END 

IF ~~ THEN BEGIN 5 
  SAY @16 /* ~Oh no, you're not going anywhere...~ */ 
IF ~~ THEN 
    GOTO 6 
END 

// Refusal: enemies of Bhaal 
IF ~~ THEN BEGIN 6 
  SAY @17/* ~Your place is at the bottom of the well. You will answer for your treachery to the Grand Master!~ */ 
IF ~~ THEN 
    DO ~SetGlobal("Bhaal_allie","GLOBAL",2) 
	    SetGlobal("Bhaal_epreuves","GLOBAL",5)~ 
    EXIT 
END 

// Group departure and prayers: ally of Bhaal 
IF ~~ THEN BEGIN 7
  SAY @18=@19 /* ~You may return to the surface. I will contact you when we have restored the temple.~ ~My brothers, let us begin by praying.~ ~Glory to the Lord of Murder. His return is near!~ ~His faithful will be rewarded, and his vengeance will be terrible!~ */ 
IF ~~ THEN 
    DO ~SetGlobal("Bhaal_allie","GLOBAL",1) 
	    SetGlobal("Bhaal_epreuves","GLOBAL",5)~ 
    EXIT 
END
