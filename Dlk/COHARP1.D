BEGIN ~COHARP1~ 

IF ~Global("init_harpie","COM015",0)~ THEN BEGIN 1 

  SAY @1=@2 /* ~Ahh, I'm awake! (The Harpy looks around and fixes her gaze on you)~ ~What have you brought me to eat, stranger? I have trouble holding a conversation on an empty stomach.~ */ 
  IF ~~ THEN REPLY @3 /* ~Uhh, nothing, what exactly are you eating?~ */ 
     DO ~SetGlobal("init_harpie","COM015",1)~ 
		 GOTO 4 

  IF ~~ THEN REPLY @4 /* ~I'm looking for a Rune. Massena told me I'd find it in a chest on this level.~ */ 
     DO ~SetGlobal("init_harpie","COM015",1)~ 
     GOTO 2 

  IF ~~ THEN REPLY @5 /* ~I don't care about your desires, what's in there?~ */ 
     DO ~SetGlobal("init_harpie","COM015",1)~ 
     GOTO 3 

END 


IF ~~ THEN BEGIN 2 

  SAY @6=@7 /* ~That scoundrel speaks the truth. It's very kind of him to send you all the way to me.~ ~What will you give me in exchange for this Rune?~ */ 
  IF ~~ THEN REPLY @8 /* ~I don't know. What do you want?~ */ 
		 GOTO 4 

END 


IF ~~ THEN BEGIN 3 

  SAY @9 /* ~Ha ha ha, an aggressive two-legged creature! We'll calm your temper!~ */ 
  IF ~~ THEN 
    DO~SetGlobal("harpie_combat","COM015",1)~ 
    EXIT 

END 


IF ~~ THEN BEGIN 4 

  SAY @12/* ~Meat, obviously, and I want it fresh. Hurry, I'm hungry!~ */ 

  IF ~~ THEN REPLY @13/* ~That'll be hard to find in a place like this... Anything else?~ */ 
		 GOTO 5 
END 

IF ~~ THEN BEGIN 5 

  SAY @14/* ~Your kind has always lacked common sense, two-legged thing. Look closely, there's some right near me. (She stares at you)~ */ 

  IF ~~ THEN REPLY @15/* ~I see... Sorry, but I'm not on the menu.~ */ 
           GOTO 6 
END 


IF ~~ THEN BEGIN 6 

  SAY @10=@11 /* ~I see things differently. I have trouble holding a conversation on an empty stomach, and this one has gone on long enough!~ ~Fresh meat, my friends! Let's eat!~ */ 
  IF ~~ THEN 
        DO~SetGlobal("harpie_combat","COM015",1)~ 
        EXIT 

END
